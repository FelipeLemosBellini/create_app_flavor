import 'package:create_app_flavor/flavors.dart';
import 'package:create_app_flavor/helpers/flavor_colors.dart';
import 'package:create_app_flavor/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: FlavorValues.nameApp,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true),
        home: MyHomePage(title: FlavorValues.nameApp));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: FlavorColor.appBarColor, title: Text(widget.title)),
        backgroundColor: FlavorColor.backgroundColor,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          PrimaryButton(
              onTapButton: () {},
              textButton: "Enable Button style",
              margin: const EdgeInsets.symmetric(horizontal: 16)),
          PrimaryButton(
              onTapButton: () {},
              textButton: "Disable Button style",
              disableButton: true,
              margin: const EdgeInsets.only(top: 8, left: 16, right: 16))
        ]));
  }
}
