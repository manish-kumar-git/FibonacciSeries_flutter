import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

TextEditingController num1 = TextEditingController();
TextEditingController num2 = TextEditingController();
bool isVisible = false;
List data = [];
void printFibonacciNumbers() {

  int f1 = int.parse(num1.text), f2 = int.parse(num2.text), f3;
  data = [];
  
  for (var i = 0; i < 10; i++) {
    data.add(f1);
    print(f1);
    f3 = f1 + f2;
    f1 = f2;
    f2 = f3;
  }
  //print(data);
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Welcome",
            textAlign: TextAlign.center,
          ),
          backgroundColor: const Color.fromARGB(255, 65, 130, 68),
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                const Text(
                  "Enter two numbers to get Fibonacci Series",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: TextField(
                        controller: num1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(
                            hintText: "Num 1",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 65, 130, 68),
                                ),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: TextField(
                        controller: num2,
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(
                            hintText: "Num 2",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 65, 130, 68),
                                ),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        printFibonacciNumbers();
                        setState(() {
                          if (isVisible == false) isVisible = !isVisible;
                        });
                      },
                      child: const Text(
                        'GET',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 65, 130, 68))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: isVisible,
                  child: Column(
                    children: [
                      const Text("Fibonacci Series Of Given number",style: TextStyle(fontSize: 20),),
                      Container(
                          alignment: Alignment.center,
                          width: 300,
                          height: 400,
                          color: const Color.fromARGB(255, 214, 210, 209),
                          child: ListView.builder(
                              itemCount: data.length,
                              itemBuilder: ((context, index) {
                                final item = data[index];
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          item.toString(),
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color:
                                                  Color.fromARGB(255, 65, 130, 68)),
                                        ))
                                  ],
                                );
                              }))),
                    ],
                  ),
                )
              ]),
            ),
          ]),
        ));
  }
}
