import 'package:flutter_bloc/flutter_bloc.dart';

class UserIdCubit extends Cubit<UserIdState> {
  UserIdCubit() : super(UserIdState());
  String? id;
  void setId(String id) {
    this.id = id;
    emit(
      UserIdLoadedState(),
    );
  }
}

class UserIdState {}

class UserIdLoadedState extends UserIdState {}
