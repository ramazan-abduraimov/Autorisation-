import 'package:authorization/auth/zabylparol_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ZabylParol extends StatelessWidget {
  const ZabylParol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Забыли пароль",
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
                  labelText: "Номер"),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Введите номер, который Вы указали  "),
          Text("при регистрации,  мы вышлем Вам "),
          Text("ссылку на восстановление пароля."),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
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
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ZabylParol_2()));
              },
              child: Text("Отправить"))
        ],
      ),
    );
  }
}
