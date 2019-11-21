part of 'connect_bloc.dart';

@immutable
abstract class ConnectEvent {
  ConnectEvent([List props = const[]]) : super ();
}

class InitConnectionEvent extends ConnectEvent {
  final Credential credential;
  InitConnectionEvent(this.credential) : super([credential]);
}

class ConnectionResultEvent extends ConnectEvent {
  final bool isSuccess;
  ConnectionResultEvent(this.isSuccess) : super([isSuccess]);
}
