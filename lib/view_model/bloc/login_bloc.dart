import 'package:belajar_bloc/view_model/bloc/login_event.dart';
import 'package:belajar_bloc/view_model/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Dio _dio = Dio();

  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      final response = await _dio.post(
        'https://pay.mjcreativa.com/api/login',
        data: {
          'email': event.email,
          'password': event.password,
        },
      );
      if (response.statusCode == 200) {
        final token = response.data.toString();
        emit(LoginSuccess(token: token));
        print(response.data);
        // Lakukan tindakan lain yang sesuai dengan login yang berhasil, seperti menyimpan token ke penyimpanan lokal
      } else {
        // ignore: prefer_const_declarations
        final error = 'Failed to login';
        emit(LoginFailure(error: error));
      }
    } catch (e) {
      // ignore: prefer_const_declarations
      final error = 'Failed to connect to server';
      emit(LoginFailure(error: error));
    }
  }
}
