import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ruc_event.dart';
part 'ruc_state.dart';
part 'ruc_bloc.freezed.dart';

class RucBloc extends Bloc<RucEvent, RucState> {
  RucBloc() : super(RucState.initial()) {
    on<RucEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
