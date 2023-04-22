import 'package:authorization/auth/registersecont.dart';
import 'package:authorization/auth/vyhot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _hidePAss = true;

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Регистрация",
            style: TextStyle(fontSize: 24),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 40, 47, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 206, 15, 15),
                        width: 2.0,
                      )),
                  labelText: "ФИО"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 30, 47, 10),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email_sharp),
                  labelText: "Номер"),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 30, 47, 10),
            child: TextFormField(
              obscureText: _hidePAss,
              decoration: InputDecoration(
                labelText: "Пароль",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _hidePAss = !_hidePAss;
                      });
                    },
                    icon: Icon(
                        _hidePAss ? Icons.visibility : Icons.visibility_off)),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Минимум 8 символов"),
                  Text("Одна латинская строчная буква"),
                  Text("Одна цифра"),
                ],
              )),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterSecont()));
            },
            child: Text("Дальше"),
          ),
          Text("или"),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: Text("Продолжить c Google"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Уже есть аккаунт?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Vyhot()));
                  },
                  child: Text("Войти"))
            ],
          ),
        ],
      ),
    );
  }
}
