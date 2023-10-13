import 'package:create_app_flavor/app.dart';
import 'package:create_app_flavor/flavors.dart';
import 'package:flutter/material.dart';

void main() async {
  FlavorValues.initialize(Flavor.flavorOne);

  runApp(const MyApp());
}
