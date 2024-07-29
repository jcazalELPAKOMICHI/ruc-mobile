import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ruc/core/api/error/error_model.dart';
import 'package:ruc/features/ruc/data/models/generic_search_response.dart';
import 'package:ruc/features/ruc/domain/usecases/ruc_use_case.dart';

part 'ruc_event.dart';
part 'ruc_state.dart';
part 'ruc_bloc.freezed.dart';

@injectable
class RucBloc extends Bloc<RucEvent, RucState> {
  final RucUseCase rucUseCase;

  RucBloc({required this.rucUseCase}) : super(RucState.initial()) {
    on<RucEvent>((event, emit) async {
      await event.map(
        searchRuc: (value) async {
          emit(state.copyWith(
            status: RucStatus.loading,
          ));

          final response =
              await rucUseCase.searchRuc(search: value.ruc, page: value.page);

          response.fold(
            (error) {
              emit(state.copyWith(
                status: RucStatus.error,
              ));
              value.onError(error);
            },
            (success) {
              emit(state.copyWith(
                status: RucStatus.loaded,
                searchResponse: success,
              ));
              value.onSuccess(success);
            },
          );
        },
      );
    });
  }
}
