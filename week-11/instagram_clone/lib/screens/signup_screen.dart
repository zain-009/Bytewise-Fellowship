import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/colors.dart';
import '../widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordContoller = TextEditingController();
  final TextEditingController _bioContoller = TextEditingController();
  final TextEditingController _usernameContoller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailContoller.dispose();
    _passwordContoller.dispose();
    _bioContoller.dispose();
    _usernameContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(),
                  ),
                  SvgPicture.asset(
                    'assets/ic_instagram.svg',
                    color: primaryColor,
                    height: 64,
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1682687220640-9d3b11ca30e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                      ),
                      Positioned(
                          bottom: -10,
                          left: 80,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo)))
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                      textEditingController: _usernameContoller,
                      textInputType: TextInputType.text,
                      hintText: "Enter your username"),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                      textEditingController: _emailContoller,
                      textInputType: TextInputType.emailAddress,
                      hintText: "Enter your email"),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                    textEditingController: _passwordContoller,
                    textInputType: TextInputType.text,
                    hintText: "Enter your password",
                    isPass: true,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                      textEditingController: _bioContoller,
                      textInputType: TextInputType.text,
                      hintText: "Enter your bio"),
                  const SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const ShapeDecoration(
                          color: blueColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)))),
                      child: const Text("Log in"),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Flexible(flex: 2,child: Container(),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text("Don't have an account?"),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],)
                ],
              ),
            )));
  }
}
