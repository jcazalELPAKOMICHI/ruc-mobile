import 'package:flutter/material.dart';
import 'package:ruc/features/ruc/domain/entities/ruc_entity.dart';

class RucStatus extends StatelessWidget {
  const RucStatus({super.key, required this.rucEntity});
  final RucEntity rucEntity;

  @override
  Widget build(BuildContext context) {
    return _status();
  }

  Widget _status() {
    switch (rucEntity.estado) {
      case 'CANCELADO':
        return const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 214, 209, 209),
          child: Icon(
            Icons.cancel,
            color: Colors.black,
          ),
        );
      case 'SUSPENSION TEMPORAL':
        return const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 175, 204, 254),
          child: Icon(
            Icons.lock_person,
            color: Colors.blue,
          ),
        );
      case 'ACTIVO':
        return const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 226, 247, 202),
          child: Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      case 'BLOQUEADO':
        return const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 203, 199),
          child: Icon(
            Icons.lock,
            color: Colors.red,
          ),
        );
      default:
        return Container();
    }
  }
}
