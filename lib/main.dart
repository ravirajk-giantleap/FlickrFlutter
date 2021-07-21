import 'package:flickrdemo/Providers/ImageProvider.dart';
import 'package:flickrdemo/Ui/Imageshome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Imageprovider>(create: (context)=> Imageprovider())
      ],
      child: MaterialApp(
      title: 'Kisan Fodder',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.green[300],
        buttonColor: Colors.green[300]
      ),
      home: ImagesHome()
    ),
    );
  }
}
