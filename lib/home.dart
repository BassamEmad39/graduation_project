import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Center(child: Text("Setting")),
          Center(child: Text("Options")),
          Center(child: Text("Reboot"))
        ],
      ),
    );
  }
}
