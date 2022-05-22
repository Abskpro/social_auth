import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_auth/bloc/authBloc/auth_cubit.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Sign In With", style: TextStyle(fontSize: 20),),
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed:(){
                  context.read<AuthCubit>().signUserWithGoogle();
                },
                style:ElevatedButton.styleFrom(
                  primary: Colors.red
                ),
                child:const Text("Google")
            ),
            ElevatedButton(
                onPressed:(){
                  context.read<AuthCubit>().signUserWithGoogle();
                },
                style:ElevatedButton.styleFrom(
                    primary: Colors.blue
                ),
                child:const Text("Facebook")
            ),
          ],
        ),
      ],
    );
  }
}
