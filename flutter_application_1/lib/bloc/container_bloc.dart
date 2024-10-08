import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'container_event.dart';
part 'container_state.dart';

class ContainerBloc extends Bloc<ContainerEvent, ContainerState> {
  ContainerBloc() : super(ContainerInitial()) {
    on<FirstContainerEvent>(firstContainer);
    on<SecondContainerEvent>(secondContainer);
  }

  Future<void> firstContainer(FirstContainerEvent event, Emitter<ContainerState> emit) async {
    emit(FirstContainerState());
    print("Container rebuilding");
    await Future.delayed(const Duration(seconds: 4));
    emit(ContainerInitial());
  }

  FutureOr<void> secondContainer(SecondContainerEvent event, Emitter<ContainerState> emit) {
    emit(SecondContainerState());
  }
}
