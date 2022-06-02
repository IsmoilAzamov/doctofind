import 'package:doctofind/constants.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _fieldController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
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
    _numberController.text = "+998";
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
                "Register",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: CustomColors().mainColor),
              ),
            ),
            SizedBox(
              width: screenSize.width * 0.9,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  //  filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    labelText: "Full Name",
                    hintText: "Full Name",
                    fillColor: Colors.white70),
                keyboardType: TextInputType.name,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: screenSize.width * 0.9,
              child: TextField(
                controller: _fieldController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    labelText: "Field",
                    hintText: "Field",
                    fillColor: Colors.white70),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: screenSize.width * 0.9,
              child: TextField(
                controller: _numberController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.phone,
                    ),

                 //   filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    labelText: "Phone Number",
                    hintText: "Phone Number",
                    fillColor: Colors.white70),
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(
              height: 20,
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
                   // filled: true,
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
                   // filled: true,
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
                Navigator.pop(context);
                Navigator.pushNamed(context, '/loginScreen');
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
