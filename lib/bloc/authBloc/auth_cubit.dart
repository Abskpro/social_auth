import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_auth/bloc/authBloc/auth_state.dart';
import 'package:social_auth/repository/AuthRepository.dart';

class AuthCubit extends Cubit<AuthState>{
  final AuthRepository _authRepository;
  AuthCubit({
    required AuthRepository authRepository
  }) :  _authRepository = authRepository,
        super(AuthState.initial());

  void signUserWithGoogle() async{
    try{
      await _authRepository.signInWithGoogle();
      // print("user is ${ user}");
    }catch(e){
      print(e);
    }
  }

  void signUserWithFacebook(){

  }

}
