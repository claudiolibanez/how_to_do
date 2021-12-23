import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

// home store
import 'package:htd_location_service/app/modules/home/home_store.dart';
import 'package:htd_location_service/app/shared/location/models/user_location_model.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({
    Key? key,
    this.title = "Location Service",
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        return Center(
          child: Text(
            '${store.currentLocation?.latitude}, ${store.currentLocation?.longitude}',
          ),
        );
      }),
    );
  }
}
