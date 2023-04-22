import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KnigiPage_1 extends StatefulWidget {
  const KnigiPage_1({super.key});

  @override
  State<KnigiPage_1> createState() => _KnigiPageState();
}

class _KnigiPageState extends State<KnigiPage_1> {
  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all(Color.fromARGB(255, 245, 246, 248)),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      minimumSize: MaterialStateProperty.all(Size(335, 40)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(18.0),
            // side: BorderSide(color: Colors.red, width: 0.0),
            ),
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 118, 20, 0),
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(220, 220, 1, 106)),
              width: 370,
              height: 128,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "У вас еще нет книг, ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "выберите первую книгу",
                          style: TextStyle(color: Colors.white),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              minimumSize:
                                  MaterialStateProperty.all(Size(218, 25)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Выбрать",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ElevatedButton(
                style: style,
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset("assets/images/knigi_button.png"),
                    SizedBox(
                      width: 9,
                    ),
                    Text("Мои книги")
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Container(
              width: 370,
              height: 145,
              child: Column(
                children: [
                  ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset("assets/images/vybrynnyi.png"),
                          SizedBox(
                            width: 19,
                          ),
                          Text("Избранные"),
                          SizedBox(
                            width: 217,
                          ),
                          Text("0")
                        ],
                      )),
                  ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset("assets/images/u_book-reader.png"),
                          SizedBox(
                            width: 9,
                          ),
                          Text("Читаю"),
                          SizedBox(
                            width: 250,
                          ),
                          Text("0")
                        ],
                      )),
                  ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset("assets/images/Group 1171.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Прочитал"),
                          SizedBox(
                            width: 230,
                          ),
                          Text("0")
                        ],
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 227, 231, 246)),
            width: 370,
            height: 149,
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                    child: Text(
                      "Мои полки",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Все",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
              SizedBox(
                height: 28,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(220, 220, 1, 106)),
                    minimumSize: MaterialStateProperty.all(Size(302, 34)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Создать полку",
                    style: TextStyle(color: Colors.white),
                  ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 39, 0, 0),
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 171, 172, 175)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(17, 5, 0, 0),
                            child: Text("Отзывы"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(17, 5, 0, 0),
                            child: Text("1 отзыв"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  width: 250,
                  height: 59,
                ),
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 171, 172, 175)),
                  width: 120,
                  height: 59,
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/Strelka.png")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
