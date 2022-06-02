import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool? isObsecured;
  Icon? visiblity;
  @override
  void initState() {
    super.initState;
    isObsecured = true;
    visiblity = const Icon(Icons.visibility_off);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
                height: screenSize.height * .65,
                child: Image.asset(
                  'assets/img_2.png',
                )),
            SizedBox(
              height: 60,
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: CustomColors().mainColor),
              ),
            ),
            SizedBox(
              width: screenSize.width * 0.9,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.mail_outline_outlined,
                    ),
                    //filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    labelText: "E-mail",
                    hintText: "E-mail",
                    fillColor: Colors.white70),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: screenSize.width * 0.9,
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.mail_outline_outlined,
                    ),
                    suffixIcon: IconButton(
                      icon: visiblity ?? const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          if (isObsecured ?? true) {
                            visiblity = const Icon(Icons.visibility);
                          } else {
                            visiblity = const Icon(Icons.visibility_off);
                          }
                        });
                        isObsecured = !isObsecured!;
                      },
                    ),
                    //filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    labelText: "Password",
                    hintText: "Password",
                    fillColor: Colors.white70),
                obscureText: isObsecured ?? true,
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 37, 167, 210)),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                    color: Colors.white,
                  ))),
              onPressed: () {

              },
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),

            )
          ],
        ),
      ),
    );
  }
}
