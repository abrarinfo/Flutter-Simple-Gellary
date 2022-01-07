import 'package:flutter/material.dart';
import 'package:flutter_gellary/components/folder.dart';

class Gellary extends StatelessWidget {
  const Gellary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gellary',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Folder(),
    );
  }
}
