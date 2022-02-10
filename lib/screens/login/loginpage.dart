import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'package:candleflutter/models/login/login_model.dart';
import 'package:candleflutter/screens/login/forgotpasswordpage.dart';
import 'package:candleflutter/screens/login/signuppage.dart';
import 'package:candleflutter/screens/main/homepage.dart';
import 'package:candleflutter/services/environment.dart';
import 'package:candleflutter/services/user_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  var formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Candle'),
        actions: [
          TextButton(
              child: Text(translate('Login.Login.SignUp')),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(10),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white))),
        ],
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 150),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                translate('Login.Login.LoginLabel'),
                style:
                    const TextStyle(color: Colors.deepOrange, fontSize: 30.0),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.Login.Email'),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return translate('Login.Login.Exception.Email');
                }
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: !passwordVisible,
              decoration: InputDecoration(
                  label: Text(
                    translate('Login.Login.Password'),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                        // Based on passwordVisible state choose the icon
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.deepOrange),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  )),
              validator: (value) {
                if (value!.isEmpty) {
                  return translate('Login.Login.Exception.Password');
                }
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordPage(),
                        ),
                      );
                    },
                    child: Text(
                      translate('Login.Login.ForgotPassword'),
                      textAlign: TextAlign.center,
                      //style: const TextStyle(color: Colors.deepOrange),
                    )),
                ElevatedButton(
                    onPressed: () {
                      isLogin(userNameController.text, passwordController.text)
                          .then((value) => {
                                if (value)
                                  {
                                    UserService.setUserInfo(),
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ),
                                    )
                                  }
                                else
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            content: Text(
                                              translate(
                                                  'Login.Login.Exception.NotLogined'),
                                            ),
                                          );
                                        })
                                  }
                              });
                    },
                    child: Text(
                      translate('Login.Login.Login'),
                      textAlign: TextAlign.center,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<bool> isLogin(String email, String password) async {
    LoginModel loginModel =
        LoginModel(email, password, '', '', Environment.privateTokenKey);

    var dio = Dio();
    var body = jsonEncode(loginModel);
    String path = Environment.apiUrl + 'Login/Login';
    var result = await dio.post(path, data: body);

    bool isSuccess = result.data['isSuccess'];
    if (isSuccess) {
      Environment.token = result.data['data'];
    }

    return isSuccess;
  }
}
