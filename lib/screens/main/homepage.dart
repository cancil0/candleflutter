import 'package:flutter/material.dart';
import 'package:candleflutter/services/user_service.dart';
import 'package:flutter_translate/flutter_translate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('Main.Home.HomePage')),
      ),
      body: buildMainPageBody(),
    );
  }

  Widget buildMainPageBody() {
    return Center(child: Text(UserService.userNameSurname + ' Hoşgeldin'));
  }
}
