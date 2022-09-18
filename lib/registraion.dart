import 'package:flutter/material.dart';
import 'package:task1/userInput.dart';

import 'logIn.dart';

class Registraion extends StatefulWidget {
  const Registraion({super.key});

  @override
  State<Registraion> createState() => _RegistraionState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController nameController = TextEditingController();

class _RegistraionState extends State<Registraion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Registration",
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
                controller: nameController,
               
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  label: Text('Name'),
                  hintText: "Enter Name",
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
                  hintText: "Create Password",
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
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => User(),
                    ));},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 65, 130, 68))),
                child: const Text('Sign Up',style: TextStyle(fontSize: 20),),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",style: TextStyle(fontSize: 17),),
                InkWell(
                  child: const Text(
                    "Log in",
                    style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 65, 130, 68)),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LogIn();
                    }));
                  },
                )
              ],
            )
          ],
        ),
      );
  }
}