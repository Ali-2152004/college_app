import 'package:college_app/constants.dart';
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
        backgroundColor: kscreenColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(height: 100),
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kPrimaryColor,
                      ),
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Color(0xff334155),
                                fontSize: 22,
                                fontFamily: 'Encode Sans Expanded',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Email',
                              style: TextStyle(
                                  color: Color(0xff64748D), fontSize: 14),
                            ),
                          ),
                          const SizedBox(height: 5),
                          CustomTextFormField(
                            secured: false,
                            onChanged: (value) {
                              email = value;
                            },
                            textHint: 'example@gmail.com',
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: const Text(
                              'Password',
                              style: TextStyle(
                                  color: Color(0xff64748D), fontSize: 14),
                            ),
                          ),
                          const SizedBox(height: 5),
                          CustomTextFormField(
                            secured: true,
                            onChanged: (value) {
                              password = value;
                            },
                            icon: const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.black,
                            ),
                          ),
                          Container(height: 25),
                          CustomButton(
                            buttonContent: 'Login',
                            color: kTextColor,
                            iconColor: Color(0xffffffff),
                            onTap: () {
                              ShowSnackBar(context, 'Logged in successfully ✅');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(
                                      toggleTheme: widget.toggleTheme),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomButton(
                            imageUrl: 'images/search.png',
                            buttonContent: 'Continue with Google',
                            color: Color(0xffffffffff),
                            iconColor: Color(0xff334155),
                            onTap: () {
                              ShowSnackBar(context, 'Logged in successfully ✅');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(
                                      toggleTheme: widget.toggleTheme),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don’t have an account? ',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: kTextColor,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff3B82F6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Forgot your Password ?',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff3B82F6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -25,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            'images/logo3.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
