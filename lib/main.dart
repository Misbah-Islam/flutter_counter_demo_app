import 'package:flutter/material.dart';
import 'package:flutter_03/controller/provider/demo_provider.dart';
import 'package:flutter_03/view/demo.dart';
import 'package:provider/provider.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DemoProvider())],
      child: MaterialApp(
        theme: ThemeData(fontFamily: "Roboto"),
        debugShowCheckedModeBanner: false,
        home: Demo(),
      ),
    );
  }
}