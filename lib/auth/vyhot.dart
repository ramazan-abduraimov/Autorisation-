import 'package:authorization/auth/zabylparol.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Vyhot extends StatefulWidget {
  const Vyhot({super.key});

  @override
  State<Vyhot> createState() => _VyhotState();
}

class _VyhotState extends State<Vyhot> {
  bool _hidePAss = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Вход",
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
                  labelText: "Почта"),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ZabylParol()));
                    },
                    child: Text("Забыли пароль?")),
              ],
            ),
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
              onPressed: () {},
              child: Text("Продолжить"))
        ],
      ),
    );
  }
}
