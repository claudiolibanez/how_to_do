import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:googleplacesautocomplete/app/modules/home/presenter/stores/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  Timer? _debounce;

  void _onSearchChanged(String query) {
    store.predictions.clear();

    if (_debounce?.isActive ?? false) _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () async {
      await store.getPlaces(query);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Observer(
        builder: (_) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: TextFormField(
                  initialValue: store.address,
                  onChanged: _onSearchChanged,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: store.predictions.length,
                  itemBuilder: (_, i) {
                    return ListTile(
                      title: Text(store.predictions[i].description),
                      onTap: () => store
                          .handleNavigationToAddressPage(store.predictions[i]),
                    );
                  },
                  separatorBuilder: (_, i) {
                    return const SizedBox(
                      height: 0.0,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
