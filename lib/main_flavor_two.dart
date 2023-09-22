import 'package:create_app_flavor/app.dart';
import 'package:create_app_flavor/flavors.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  FlavorValues.initialize(Flavor.flavorTwo);

  runApp(const MyApp());
}
