import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignUpPage();
  }
}

class _SignUpPage extends State<SignUpPage> {
  var formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController secondaryEmailController = TextEditingController();
  TextEditingController mobilePhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController profileStatusController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();

  bool passwordVisible = false;
  bool rePasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('Login.Login.SignUp')),
      ),
      body: buildSignUpPageBody(),
    );
  }

  Widget buildSignUpPageBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.SignUp.Name'),
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return translate('Login.Login.Exception.Email');
                }
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: surNameController,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.SignUp.SurName'), //soyisim
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return translate('Login.Login.Exception.Email');
                }
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.SignUp.Email'),
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return translate('Login.Login.Exception.Email');
                }
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: secondaryEmailController,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.SignUp.SecondaryEmail'),
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return translate('Login.Login.Exception.Email');
                }
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: mobilePhoneController,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.SignUp.MobilePhone'),
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return translate('Login.Login.Exception.Email');
                }
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.SignUp.UserName'),
                ),
              ),
              validator: (value) {
                if (value == '') {
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
                  translate('Login.SignUp.Password'),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.deepOrange),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return translate('Login.Login.Exception.Password');
                }
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: rePasswordController,
              obscureText: !rePasswordVisible,
              decoration: InputDecoration(
                label: Text(
                  translate('Login.SignUp.RePassword'),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                      rePasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.deepOrange),
                  onPressed: () {
                    setState(() {
                      rePasswordVisible = !rePasswordVisible;
                    });
                  },
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return translate('Login.Login.Exception.Password');
                }
              },
            ),
            DropdownButtonFormField(
              style: const TextStyle(backgroundColor: Colors.black),
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem(child: Text("Everyone"), value: "E"),
                DropdownMenuItem(child: Text("Confidential"), value: "C"),
                DropdownMenuItem(child: Text("Follower"), value: "F")
              ],
              onChanged: (value) {
                setState(() {
                  profileStatusController.value =
                      value.toString() as TextEditingValue;
                });
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                translate('Login.SignUp.SignUp'),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
