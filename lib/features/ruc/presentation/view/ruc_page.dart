import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:ruc/features/ruc/presentation/bloc/ruc_bloc.dart';
import 'package:ruc/features/ruc/presentation/widgets/ruc_appbar.dart';

class RucPage extends StatefulWidget {
  const RucPage({super.key});

  @override
  State<RucPage> createState() => _RucPageState();
}

class _RucPageState extends State<RucPage> {
  final _searchController = TextEditingController();
  final _controller = NumberPaginatorController();
  int _currentPage = 1;
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscador de RUC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese razón social o RUC',
                prefixIcon: Icon(Icons.search),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
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
              onPressed: () {
                setState(() {
                  _currentPage = 0;
                });

                _searchRuc(context);
              },
              icon: const Icon(Icons.search_outlined),
              label: const Text('Buscar'),
            ),
            const SizedBox(
              height: 12,
            ),
            BlocBuilder<RucBloc, RucState>(
              builder: (context, state) {
                return Expanded(
                  child: SingleChildScrollView(
                    child: Table(
                      border: TableBorder.all(), // Add borders to cells
                      children: [
                        const TableRow(
                          children: [
                            TableCell(child: Center(child: Text('Ruc'))),
                            TableCell(
                                child: Center(child: Text('Razón social'))),
                            TableCell(child: Center(child: Text('Estado'))),
                          ],
                        ),
                        if (state.searchResponse != null) ...[
                          ...state.searchResponse!.data.contribuyentes.map(
                            (it) => TableRow(
                              children: [
                                TableCell(child: Center(child: Text(it.ruc))),
                                TableCell(
                                    child: Center(child: Text(it.razonSocial))),
                                TableCell(
                                    child: Center(child: Text(it.estado))),
                              ],
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<RucBloc, RucState>(
              builder: (context, state) {
                return state.searchResponse != null &&
                        state.searchResponse!.data.paginas > 1
                    ? NumberPaginator(
                        controller: _controller,
                        numberPages: state.searchResponse!.data.paginas,
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
          },
          onSuccess: (value) {
            context.loaderOverlay.hide();
          },
        ));
  }
}
