import 'package:flutter/material.dart';
import 'package:maps_pilote/view/google_maps.dart';

import 'configureDependencies.dart';

void main(List<String> args) {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GoogleMaps(),
      ),
    );
  }
}
