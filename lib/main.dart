import 'package:adote/Telas/ListaDeAnimais.dart';
import 'package:adote/Telas/TelaInicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}

void initialization(BuildContext context) async {
  print('ready in 3...');
  await Future.delayed(const Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const TelaInicio(),
      initialRoute: "home",
      routes: <String, WidgetBuilder>{
        "home": (_) => TelaInicio(),
        "animalsList": (_) => ListaDeAnimais()
      },
    );
  }
}
