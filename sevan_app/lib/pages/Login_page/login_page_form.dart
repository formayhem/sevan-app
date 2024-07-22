import 'package:flutter/material.dart';
import 'package:app/pages/home_page.dart';
import '../../components/loginbutton.dart';
import '../../components/text_fields.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  static const routeName = '/WelcomePage';

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final paymentNumberController = TextEditingController();
  bool isLoading = false; // Track whether the login is in progress

  Future<void> simulateLogin() async {
    // Simulate a login process by delaying for 3 seconds
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 350,
            height: 380,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 182, 178, 178),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextField(
                  controller: nameController,
                  hintText: 'namba ya simu',
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Nenosiri',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Umesahau Nenosiri?',
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                LoginButton(
                  onTap: () async {
                    setState(() {
                      isLoading = true; // Start loading
                    });
                    await simulateLogin(); // Simulate login process
                    setState(() {
                      isLoading = false; // Stop loading
                    });

                    Navigator.of(context).pushNamed(
                      HomePage.routeName,
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                //not a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Hauna account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Jisajili',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
