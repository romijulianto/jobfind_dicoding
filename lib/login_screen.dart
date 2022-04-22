import 'package:flutter/material.dart';
import 'package:jobfind_dicoding/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? value;
  _login() {
    print(nameController.text);
    print(passwordController.text);

    if (passwordController.text == "romijr123") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            value: nameController.text.toString(),
          ),
        ),
      );
    } else {
      final snackBar = SnackBar(
        content: const Text('Invalid Username dan password'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/logo.png",
                height: 80,
                width: 80,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "JobFinder",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff475BD8)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff475BD8)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: nameController,
                  decoration:
                      const InputDecoration.collapsed(hintText: "Email atau Username"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff475BD8)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: passwordController,
                  decoration:
                      const InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff475BD8),
                    border: Border.all(color: const Color(0xff475BD8)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {
                    _login();
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xffffffff), fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
