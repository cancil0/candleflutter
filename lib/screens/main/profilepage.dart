import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('Main.Profile.Profile')),
      ),
      body: buildProfilPageBody(),
    );
  }

  Widget buildProfilPageBody() {
    return const Center(child: Text('Kısa bir süre sonra aktif olacaktır'));
  }
}
