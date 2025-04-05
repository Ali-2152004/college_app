import 'package:college_app/widgets/custom_button.dart';
import 'package:college_app/widgets/custom_text_form.dart';
import 'package:college_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Login extends StatefulWidget {
  static String id = 'login page';
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
                // ignore: prefer_const_constructors

                Image.asset(
                  'lib/images/fcai.jpg',
                  height: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to FCAI",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 24,
                          fontFamily: 'times new roman',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's access work from here ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'encode',
                      ),
                    ),
                  ],
                ),

                const Row(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                  ],
                ),

                CustomTextFormField(
                  secured: false,
                  onChanged: (value) {
                    email = value;
                  },
                  textHint: 'Email',
                  icon: const Icon(
                    Icons.email_outlined,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  secured: true,
                  onChanged: (value) {
                    password = value;
                  },
                  textHint: 'Password',
                  icon: const Icon(
                    Icons.lock_outline,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                CustomButton(
                  buttonContent: 'Login',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                    // if (formKey.currentState!.validate()) {
                    //   isLoading = true;
                    //   setState(() {});
                    //   try {
                    //     await FirebaseAuth.instance.signInWithEmailAndPassword(
                    //         email: email!, password: password!);

                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => HomeScreen()));
                    //   } on FirebaseAuthException catch (e) {
                    //     if (e.code == 'user-not-found') {
                    //       ShowSnackBar(context,
                    //           'This user is not exist , Try to sign up ⛔');
                    //     } else if (e.code == 'wrong-password') {
                    //       ShowSnackBar(context, 'Wrong password ⛔');
                    //     }
                    //   } catch (e) {
                    //     ShowSnackBar(context,
                    //         'There is something went wrong , please try again later !');
                    //     print(e);
                    //   }
                    //   isLoading = false;
                    //   setState(() {});
                    // } else {}
                  },
                ),

                Image.asset(
                  'lib/images/Privacy policy-rafiki.png',
                  height: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
