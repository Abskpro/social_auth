import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_auth/bloc/authBloc/auth_cubit.dart';
import 'package:social_auth/repository/AuthRepository.dart';
import 'package:social_auth/screens/app.dart';

Future<void> appInitialize() async{
  final AuthRepository authRepository = AuthRepository();
   return runApp(
       BlocProvider<AuthCubit>(
             create: (context) => AuthCubit(authRepository: authRepository),
             child:const MaterialApp(
                  home:App()
             ),
           )
   );
}

