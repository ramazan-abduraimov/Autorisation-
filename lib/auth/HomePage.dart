import 'package:authorization/auth/register.dart';
import 'package:authorization/auth/registersecont.dart';
import 'package:authorization/auth/vyhot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all(Color.fromARGB(255, 220, 1, 106)),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      minimumSize: MaterialStateProperty.all(Size(280, 40)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red, width: 0.0),
        ),
      ),
    );
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(23, 0, 22, 0),
          child: Image.asset(
            'assets/images/Imeg20.png',
            width: 330,
            height: 196,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "Добро пожаловать в",
          style: TextStyle(fontSize: 18),
        ),
        Text(
          "Nur",
          style: TextStyle(fontSize: 18, fontFamily: "Regular"),
        ),
        Text(
          "Digital library",
          style: TextStyle(fontSize: 18, fontFamily: "Regular"),
        ),
        SizedBox(
          height: 19,
        ),
        ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Vyhot()));
            },
            child: Text(
              "Вход",
            )),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Register()));
            },
            child: Text("Создать Аккаунт")),
      ],
    ));
  }
}
