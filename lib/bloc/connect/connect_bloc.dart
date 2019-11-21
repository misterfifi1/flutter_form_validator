import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_form_validator/model/Credential.dart';
import 'package:meta/meta.dart';

part 'connect_event.dart';

part 'connect_state.dart';

class ConnectBloc extends Bloc<ConnectEvent, ConnectState> {
  @override
  ConnectState get initialState => InitialConnectState();

  @override
  Stream<ConnectState> mapEventToState(ConnectEvent event) async* {
    // TODO: Pending requirements
  }
}
