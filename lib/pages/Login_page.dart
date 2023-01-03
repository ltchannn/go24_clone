import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey1 = GlobalKey<FormState>();
  final formkey2 = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final user = FirebaseAuth.instance.currentUser;
  var _isObscure = true;
  //FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    //Pushnoti.init();
    //listenNotifications();
  }

  // void listenNotifications() =>
  //     Pushnoti.onNoti.stream.listen(onClickedNotification);

  // void onClickedNotification(String? payload) => Navigator.of(context).push(
  //     MaterialPageRoute(builder: (context) => NotiPage(payload: payload)));


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 0),
        child: Column(
          children: <Widget>[
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100,),
                Image.asset('images/IMG_8151.PNG'),
                SizedBox(height: 120,),
                //Center(
                //  child: Container(
                //    //height: 80,
                //    width: double.infinity,
                //    padding: EdgeInsets.all(0),
                //    margin: EdgeInsets.all(20),
                //    decoration: BoxDecoration(
                //      image: DecorationImage(
                //          image: AssetImage('images/IMG_8151.PNG'),
                //          fit: BoxFit.cover),
                //    ),
                //  ),
                //),
                Form(
                  key: formkey1,
                  child: TextFormField(
                    //focusNode: myFocusNode,
                    cursorColor: Colors.black,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '\u26A0 A valid email is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      filled: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: formkey2,
                  child: TextFormField(
                    obscureText: _isObscure,
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '\u26A0 Password must be 6 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          child: _isObscure
                              ? Icon(Icons.visibility_off_outlined)
                              : Icon(Icons.visibility_outlined)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Forgot your password?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer(),
                        //..onTap = widget.SignUp,
                        text: " Sign Up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  //height: (size.height - 60) * 0.5,
                  //height: 200,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        child: Container(
                            //height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: const [
                                  Colors.blueGrey,
                                  Color(0xFF92A3FD),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey.shade900,
                                  onPrimary: Colors.white,
                                  minimumSize: Size(double.infinity, 75)),
                              onPressed: () {
                                // Pushnoti.showNoti(
                                //   title: 'My_Project',
                                //   body: 'You have just signed in your account',
                                //   payload: 'xxx',
                                // );
                                // final snackBar1 = SnackBar(
                                //   content: Row(
                                //     children: const [
                                //       FaIcon(FontAwesomeIcons.lock),
                                //       SizedBox(
                                //         width: 8,
                                //       ),
                                //       Text("Logged in"),
                                //     ],
                                //   ),
                                // );
                                // login();
                                // //getData();

                                // FirebaseAuth.instance
                                //     .authStateChanges()
                                //     .listen((User? user) {
                                //   if (user != null) {
                                //     ScaffoldMessenger.of(context)
                                //         .showSnackBar(snackBar1);
                                //   }
                                // });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.arrow_forward_sharp),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Sign in',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Flexible(
                            child: Divider(
                              thickness: 0.8,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'or',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Divider(
                              thickness: 0.8,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.black,
                              minimumSize: Size(double.infinity, 70)),
                          onPressed: () {
                            // final provider = Provider.of<GoogleSignInProvider>(
                            //     context,
                            //     listen: false);
                            // provider.googleLogin();
                            // //getData();
                            // final snackBar2 = SnackBar(
                            //   content: Row(
                            //     children: const <Widget>[
                            //       FaIcon(FontAwesomeIcons.lock),
                            //       SizedBox(
                            //         width: 10,
                            //       ),
                            //       Text("Signed in"),
                            //     ],
                            //   ),
                            // );
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar2);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              FaIcon(FontAwesomeIcons.google),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future login() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    //navigatorKey.currentState!.popUntil((route) => route.isFirst);

    formkey1.currentState!.validate();
    formkey2.currentState!.validate();
  }
}
