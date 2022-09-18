// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:task1/registraion.dart';
import 'package:task1/userInput.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Log In",
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 65, 130, 68),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text('E-mail'),
                hintText: "Enter E-mail",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text('Password'),
                hintText: "Enter Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => User(),
                    ));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 65, 130, 68))),
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 17),
              ),
              InkWell(
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                      color: Color.fromARGB(255, 65, 130, 68), fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Registraion(),
                      ));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
