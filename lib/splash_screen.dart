import 'package:flutter/material.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    //double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;

    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, 'welcome');
    });
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [ Color.fromARGB(255, 2, 83, 5), Color.fromARGB(255, 0, 20, 1)])
        ),
        child:  const Center(
            child: Image(image: AssetImage("assets/BackgroundEraser_20230806_100154355.png"))
            ),
      ),
    );
  }
}
