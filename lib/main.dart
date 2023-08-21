import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:splashscreen/page_home.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Main Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    const PageHome()
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        // child:FlutterLogo(size:MediaQuery.of(context).size.height)
        child: const Image(
          image: AssetImage("assets/loading.gif"),
          width: 100,
          height: 80,
        ),
    );
  }
}
