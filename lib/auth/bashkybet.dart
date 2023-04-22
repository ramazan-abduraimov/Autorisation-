import 'dart:ffi';

import 'package:authorization/auth/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BashkyBet extends StatefulWidget {
  const BashkyBet({super.key});

  @override
  State<BashkyBet> createState() => _BashkyBetState();
}

class _BashkyBetState extends State<BashkyBet> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 8)).then((value) => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(107, 0, 22, 107),
          child: Column(
            children: [
              Text(
                "Nur ",
                style: TextStyle(fontSize: 32, fontFamily: "Regular"),
              ),
              Text(
                "Digital library",
                style: TextStyle(fontSize: 32, fontFamily: "Regular"),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
