import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class AuthState extends Equatable{
  final UserCredential? user;
  final bool? isLoggedIn;

  const AuthState({this.user, this.isLoggedIn});

  factory AuthState.initial(){
    return const AuthState(
      isLoggedIn:false,
    );
  }

  @override
  List<Object?> get props => [user, isLoggedIn];
}
