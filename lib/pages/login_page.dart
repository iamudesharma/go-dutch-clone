import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/controller/login_controller.dart';
import 'package:go_dutch_clone/helper/helpers.dart';
import 'package:go_dutch_clone/main.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            // vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  'Go Dutch',
                  style: TextStyle(
                    color: Colors.indigo.shade400,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  textEditController(
                    hintText: 'Enter The Email',
                    label: 'Email',
                    textEditingController: controller.emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textEditController(
                    hintText: 'Enter The Password',
                    label: 'Password',
                    textEditingController: controller.passwordController,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.phone,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                      onPressed: () async {
                        await controller.signInWithGoogle().then((value) =>
                            Get.off(
                                () => const MyHomePage(title: 'Go Dutch App')));
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                        semanticLabel: 'Google',
                      )),
                  IconButton(
                      onPressed: () {
                        controller.signInWithFacebook().then(
                              (value) => Get.off(
                                () => const MyHomePage(title: 'Go Dutch App'),
                              ),
                            );
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.blue,
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('Create New Account'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  TextField textEditController(
      {TextEditingController? textEditingController,
      String? hintText,
      String? label}) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        labelText: label,
      ),
    );
  }
}
