part of 'ruc_bloc.dart';

@freezed
class RucState with _$RucState {
  const factory RucState({
    required RucStatus status,
    String? message,
  }) = _RucState;

  factory RucState.initial() => const RucState(
        status: RucStatus.initial,
      );
}

enum RucStatus { initial, loading, loaded, error }
