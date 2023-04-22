import 'package:authorization/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterSecont extends StatelessWidget {
  const RegisterSecont({super.key});

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
                  labelText: "Код потверждения"),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Введите код отправленный вам на указанный  ",
                  ),
                  Text("номер телефона")
                ],
              )),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Register()));
            },
            child: Text("Отправить"),
          ),
        ],
      ),
    );
  }
}
