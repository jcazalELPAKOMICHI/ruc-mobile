import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:ruc/core/assets/image.dart';
import 'package:ruc/core/extensions/theme_extension.dart';
import 'package:ruc/core/themes/bloc/theme_bloc.dart';
import 'package:ruc/features/ruc/presentation/bloc/ruc_bloc.dart';
import 'package:ruc/features/ruc/presentation/widgets/ruc_appbar.dart';
import 'package:ruc/features/ruc/presentation/widgets/ruc_item.dart';
import 'package:ruc/l10n/l10n.dart';
import 'package:toasty_box/toast_enums.dart';
import 'package:toasty_box/toast_service.dart';

class RucPage extends StatefulWidget {
  const RucPage({super.key});

  @override
  State<RucPage> createState() => _RucPageState();
}

class _RucPageState extends State<RucPage> {
  final _searchController = TextEditingController();
  final _controller = NumberPaginatorController();
  final _expansionTileController = ExpansionTileController();
  final _scrollController = ScrollController();
  var _enabledButton = false;
  int _currentPage = 0;
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 4,
            backgroundImage: AssetImage(
              AppImage().person,
            ),
          ),
        ),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return IconButton(
                  onPressed: () => context.read<ThemeBloc>().add(
                      state.isDarkMode
                          ? const ThemeEvent.switchLightMode()
                          : const ThemeEvent.switchDarkMode()),
                  icon: state.isDarkMode
                      ? const Icon(Icons.light_mode)
                      : const Icon(Icons.dark_mode));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: l10n.inputRucPlaceHolder,
                prefixIcon: const Icon(Icons.search),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              onChanged: (value) {
                setState(() {
                  _enabledButton = value.isNotEmpty;
                });
              },
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: _enabledButton
                  ? () {
                      _searchRuc(context);
                    }
                  : null,
              icon: const Icon(Icons.search_outlined),
              label: Text(l10n.search),
            ),
            const SizedBox(
              height: 12,
            ),
            BlocBuilder<RucBloc, RucState>(
              builder: (context, state) {
                return state.searchResponse!.isNotEmpty
                    ? Expanded(
                        child: ListView.separated(
                          controller: _scrollController,
                          separatorBuilder: (context, index) => const Divider(
                            height: 0.5,
                          ),
                          itemCount: state.searchResponse!.length,
                          itemBuilder: (context, index) {
                            return RucItem(
                              key: UniqueKey(),
                              rucEntity: state.searchResponse![index],
                              controller: _expansionTileController,
                            );
                          },
                        ),
                      )
                    : Container();
              },
            ),
            BlocBuilder<RucBloc, RucState>(
              builder: (context, state) {
                return state.paginas! > 1
                    ? NumberPaginator(
                        controller: _controller,
                        numberPages: state.paginas!,
                        initialPage: _currentPage,
                        onPageChange: (int index) {
                          setState(() {
                            _currentPage = index;
                            _searchRuc(context);
                          });
                        },
                      )
                    : Container();
              },
            )
          ],
        ),
      ),
    );
  }

  void _searchRuc(BuildContext context) {
    context.loaderOverlay.show();
    var f = FocusScope.of(context);

    if (!f.hasPrimaryFocus) {
      f.unfocus();
    }
    context.read<RucBloc>().add(RucEvent.searchRuc(
          ruc: _searchController.text,
          page: _currentPage,
          onError: (value) {
            context.loaderOverlay.hide();
            ToastService.showErrorToast(
              context,
              length: ToastLength.medium,
              expandedHeight: 100,
              message: value.message,
            );
          },
          onSuccess: () {
            context.loaderOverlay.hide();
            _scrollController.animateTo(
              0.0,
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 300),
            );
            setState(() {
              _currentPage = 0;
            });
          },
        ));
  }
}
