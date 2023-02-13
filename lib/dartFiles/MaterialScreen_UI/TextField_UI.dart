import 'package:flutter/material.dart';

class TextField_UI extends StatefulWidget {
  const TextField_UI({Key? key}) : super(key: key);

  @override
  State<TextField_UI> createState() => _TextField_UIState();
}

class _TextField_UIState extends State<TextField_UI> {
  bool passwordObscured = true;

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              focusedBorder: OutlineInputBorder(
                borderSide:  const BorderSide(
                  color: Colors.tealAccent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide:  BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),

              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passwordController,
            obscureText: passwordObscured,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: const Icon(
                Icons.lock,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordObscured = !passwordObscured;
                    });
                  },
                  icon: Icon(
                    passwordObscured
                        ? Icons.visibility_off
                        : Icons.visibility,
                  )),
              contentPadding:  const EdgeInsets.symmetric(vertical: 15),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}
