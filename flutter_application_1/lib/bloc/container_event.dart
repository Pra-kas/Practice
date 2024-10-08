part of 'container_bloc.dart';

@immutable
sealed class ContainerEvent {}

class FirstContainerEvent extends ContainerEvent {}

class SecondContainerEvent extends ContainerEvent {}
