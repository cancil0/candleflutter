import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DiscoverPage();
  }
}

class _DiscoverPage extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('Main.Discover.Discover')),
      ),
      body: buildDiscoverPageBody(),
    );
  }

  Widget buildDiscoverPageBody() {
    return const Center(child: Text('Kısa bir süre sonra aktif olacaktır'));
  }
}
