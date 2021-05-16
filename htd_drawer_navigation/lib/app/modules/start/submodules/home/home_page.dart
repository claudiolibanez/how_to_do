import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobile/app/modules/start/submodules/home/home_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home'),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/home/details', forRoot: true);
              },
              child: Text('Details'),
            ),
          ],
        ),
      ),
    );
  }
}
