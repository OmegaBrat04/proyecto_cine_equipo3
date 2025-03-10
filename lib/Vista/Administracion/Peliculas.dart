import 'package:flutter/material.dart';

void main() {
  runApp(const listaPeliculas());
}

class listaPeliculas extends StatelessWidget {
  const listaPeliculas({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Peliculas(),
      ),
    );
  }
}

class Peliculas extends StatefulWidget {
  const Peliculas({super.key});
  @override
  _PeliculasState createState() => _PeliculasState();
}

class _PeliculasState extends State<Peliculas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF022044), Color(0xFF01021E)],
          ),
        ),
      ),
    );
  }
}
