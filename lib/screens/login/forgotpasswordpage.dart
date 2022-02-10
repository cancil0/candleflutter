import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordPage();
  }
}

class _ForgotPasswordPage extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('Login.ForgotPassword.ForgotPassword')),
      ),
      body: buildForgotPasswordPageBody(),
    );
  }

  Widget buildForgotPasswordPageBody() {
    return const Center(child: Text('Kısa bir süre sonra aktif olacaktır'));
  }
}
