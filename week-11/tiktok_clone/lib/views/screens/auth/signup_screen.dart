import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TikTok Clone",
                style: TextStyle(
                    fontSize: 35, color: buttonColor, fontWeight: FontWeight.w900),
              ),
              const Text("Register",style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 15,),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://media.vanityfair.com/photos/5b46274a6520f70b78e5cfe5/1:1/w_960,h_960,c_limit/The-Rock-2020-Potential-Run.jpg'),
                    backgroundColor: Colors.black,
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo)))
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(controller: _usernameController, labelText: "Username", icon: Icons.person),
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(controller: _emailController, labelText: "Email", icon: Icons.email),
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(controller: _passwordController, labelText: "Password", icon: Icons.lock),
              ),const SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: InkWell(
                    onTap: (){

                    },
                    child: const Center(child: Text("Register",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),))),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? ",style: TextStyle(fontSize: 20),),
                  InkWell(
                      onTap: (){

                      },
                      child: Text("Login",style: TextStyle(fontSize: 20,color: buttonColor),)),
                ],
              )
            ],
          ),
        ));
  }
}
