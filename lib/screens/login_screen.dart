import 'package:college_app/widgets/custom_button.dart';
import 'package:college_app/widgets/custom_text_form.dart';
import 'package:college_app/screens/home_screen.dart';
import 'package:college_app/widgets/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Login extends StatefulWidget {
  static String id = 'login page';
  final VoidCallback toggleTheme;

  const Login({super.key, required this.toggleTheme});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email, password;
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'images/logo3.png',
                  height: 120,
                ),
                const SizedBox(height: 18),
                Column(
                  children: [
                    Text(
                      "Welcome to FCAI",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 24,
                        fontFamily: 'times new roman',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Let's access work from here ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'encode',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.indigo, fontSize: 24),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  secured: false,
                  onChanged: (value) {
                    email = value;
                  },
                  textHint: 'Email',
                  icon: const Icon(
                    Icons.email,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  secured: true,
                  onChanged: (value) {
                    password = value;
                  },
                  textHint: 'Password',
                  icon: const Icon(
                    Icons.password,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  buttonContent: 'Login',
                  color: const Color.fromARGB(255, 35, 46, 108),
                  icon: Icons.login,
                  iconColor: Colors.white,
                  onTap: () {
                    ShowSnackBar(context, 'Logged in successfully ✅');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HomeScreen(toggleTheme: widget.toggleTheme),
                      ),
                    );
                  },
                ),
                Image.asset(
                  'images/Privacy policy-rafiki.png',
                  height: 250,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
