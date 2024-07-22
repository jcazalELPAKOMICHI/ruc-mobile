part of 'ruc_bloc.dart';

@freezed
class RucEvent with _$RucEvent {
  const factory RucEvent.searchRuc(String ruc) = _SearchRuc;
}
