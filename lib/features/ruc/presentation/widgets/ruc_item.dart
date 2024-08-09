import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ruc/features/ruc/domain/entities/ruc_entity.dart';
import 'package:ruc/features/ruc/presentation/widgets/ruc_status.dart';
import 'package:ruc/l10n/l10n.dart';
import 'package:toasty_box/toast_enums.dart';
import 'package:toasty_box/toast_service.dart';

class RucItem extends StatelessWidget {
  const RucItem({required this.rucEntity, required this.controller, super.key});
  final RucEntity rucEntity;
  final ExpansionTileController controller;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ExpansionTile(
      visualDensity: const VisualDensity(horizontal: -4),
      controller: controller,
      tilePadding: EdgeInsets.zero,
      leading: RucStatus(rucEntity: rucEntity),
      title: Text(
        rucEntity.razonSocial,
        style: const TextStyle(fontSize: 14),
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: Alignment.centerLeft,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${l10n.ruc}: ${rucEntity.ruc}',
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    '${l10n.status}: ${rucEntity.estado}',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(
                        text:
                            "Razón social: ${rucEntity.razonSocial} \nRuc: ${rucEntity.ruc}"));
                    ToastService.showSuccessToast(
                      context,
                      length: ToastLength.medium,
                      expandedHeight: 100,
                      message: 'Copiado!!!',
                    );
                  },
                  icon: const Icon(
                    Icons.copy,
                    color: Color.fromARGB(255, 126, 190, 242),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
