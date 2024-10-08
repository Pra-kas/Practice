part of 'container_bloc.dart';

@immutable
sealed class ContainerState {}

final class ContainerInitial extends ContainerState {}

class FirstContainerState extends ContainerState {}

class SecondContainerState extends ContainerState {}
