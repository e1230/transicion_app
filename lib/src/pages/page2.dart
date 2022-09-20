import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 1"),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('pagina 2'),
      ),
    );
  }
}
