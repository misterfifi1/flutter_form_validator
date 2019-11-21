part of 'connect_bloc.dart';

@immutable
abstract class ConnectState {
  ConnectState([List props = const []]) : super();
}

class InitialConnectState extends ConnectState {}

class LoadingConnectState extends ConnectState {
  final String message;

  LoadingConnectState(this.message) : super([message]);
}

class ErrorConnectState extends ConnectState {
  final String message;
  ErrorConnectState(this.message) : super([message]);
}

class SuccessConnectState extends ConnectState {
  final String username;
  SuccessConnectState(this.username) : super([username]);
}
