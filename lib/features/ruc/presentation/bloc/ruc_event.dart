part of 'ruc_bloc.dart';

@freezed
class RucEvent with _$RucEvent {
  const factory RucEvent.searchRuc({
    required String ruc,
    required int page,
    required ValueChanged<ErrorModel> onError,
    required VoidCallback onSuccess,
  }) = _SearchRuc;
}
