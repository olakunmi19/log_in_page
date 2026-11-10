import 'package:flutter/material.dart';
import 'package:st_try/component/my_button.dart';
import 'package:st_try/component/my_textfield.dart';
import 'package:st_try/component/square_tile.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn () {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock, size: 100),

              SizedBox(height: 50),

              Text(
                'Welcome back you have been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              SizedBox(height: 50),

              MyTextfield(
                controller: userNameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextfield(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      'Forgotten Password',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              MyButton(
                onTap: signUserIn ,
              ),

              const SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child:Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ) 
                    ),
                
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text('Or Continue with',style: TextStyle(color: Colors.grey[400]),),
                    ),
                
                    Expanded(
                      child:Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ) 
                    )
                  ],
                ),
              ),

              const SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/google.png'),

                  const SizedBox(width: 10,),

                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              const SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',style: TextStyle(color: Colors.grey[700]),),
                  const SizedBox(width: 4,),
                  Text('Register now',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
