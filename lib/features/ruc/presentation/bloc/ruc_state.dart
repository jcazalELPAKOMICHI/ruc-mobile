part of 'ruc_bloc.dart';

@freezed
class RucState with _$RucState {
  const factory RucState(
      {required RucStatus status,
      List<RucEntity>? searchResponse,
      String? message,
      int? paginas}) = _RucState;

  factory RucState.initial() => const RucState(
        status: RucStatus.initial,
        searchResponse: [],
        paginas: 0,
      );
}

enum RucStatus { initial, loading, loaded, error }
