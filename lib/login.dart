import 'package:flutter/material.dart';
import 'package:flutter_application_4/caregory_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String user = '', password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 400,
        width: 300,
        //color: Colors.purple,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.pink[100],
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onChanged: ((value) {
                  user = value;
                  print(user);
                }),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'نام کاربری',
                  hintText: 'نام کاربری خود را وارد کنید',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: ((value) {
                  password = value;
                  print(password);
                }),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'رمز عبور',
                    hintText: 'رمز عبور را وارد کنید'),
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (user == 'ali' && password == '123456') {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CategoryPage()));
                    }
                  },
                  child: const Text('ورود به حساب'),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ]),
      )),
    );
  }
}
