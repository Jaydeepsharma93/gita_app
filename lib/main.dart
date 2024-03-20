import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gita_app/view/screen/bhagavad_geeta.dart';
import 'package:gita_app/view/screen/geeta_aarti.dart';
import 'package:gita_app/view/screen/geeta_mahatmya.dart';
import 'package:gita_app/view/screen/geeta_saar.dart';
import 'package:gita_app/view/screen/home.dart';
import 'package:gita_app/view/screen_2/shlok.dart';

void main() {
  runApp(const Gita_app());
}

class Gita_app extends StatefulWidget {
  const Gita_app({super.key});

  @override
  State<Gita_app> createState() => _Gita_appState();
}

class _Gita_appState extends State<Gita_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splas(),
        '/home': (context) => Home_geeta(),
        '/bhagavad': (context) => Bhagavad_geeta(),
        '/saar': (context) => Geeta_saar(),
        '/mahatmya': (context) => Geeta_mahatmya(),
        '/aarti': (context) => Geeta_aarti(),
        '/shlok' : (context) => Shlok()
      },
    );
  }
}

class Splas extends StatefulWidget {
  const Splas({super.key});

  @override
  State<Splas> createState() => _SplasState();
}

class _SplasState extends State<Splas> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, '/home');
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('श्रीमद भागवत गीता', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'asset/img/bg.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Image.asset('asset/img/geeta.png'),
        ),
      ),
    );
  }
}

