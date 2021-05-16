import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobile/app/modules/start/start_store.dart';

class StartPage extends StatefulWidget {
  final String title;

  const StartPage({
    Key? key,
    this.title = 'StartPage',
  }) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RouterOutlet(),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text('header'),
            ),
            ListTile(
              title: Text(
                'Home',
              ),
              onTap: () {
                Modular.to.navigate('/home');
                Modular.to.pop();
              },
            ),
            ListTile(
              title: Text(
                'Profile',
              ),
              onTap: () {
                Modular.to.navigate('/profile');
                Modular.to.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
