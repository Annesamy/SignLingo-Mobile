import 'package:flutter/material.dart';
import 'package:mobile/widgets/custom_scaffold_2.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  final _itemImage = [
    Image.asset('assets/learning/A.png'),
    Image.asset('assets/learning/B.png'),
    Image.asset('assets/learning/C.png'),
    Image.asset('assets/learning/D.png'),
    Image.asset('assets/learning/E.png'),
    Image.asset('assets/learning/F.png'),
    Image.asset('assets/learning/G.png'),
    Image.asset('assets/learning/H.png'),
    Image.asset('assets/learning/I.png'),
    Image.asset('assets/learning/J.png'),
    Image.asset('assets/learning/K.png'),
    Image.asset('assets/learning/L.png'),
    Image.asset('assets/learning/M.png'),
    Image.asset('assets/learning/N.png'),
    Image.asset('assets/learning/O.png'),
    Image.asset('assets/learning/P.png'),
    Image.asset('assets/learning/Q.png'),
    Image.asset('assets/learning/R.png'),
    Image.asset('assets/learning/S.png'),
    Image.asset('assets/learning/T.png'),
    Image.asset('assets/learning/U.png'),
    Image.asset('assets/learning/V.png'),
    Image.asset('assets/learning/W.png'),
    Image.asset('assets/learning/X.png'),
    Image.asset('assets/learning/Y.png'),
    Image.asset('assets/learning/Z.png'),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Learn\n',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 1),
                    child: SizedBox(
                      width: 160,
                      child: _itemImage[index],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            child: const Text("A")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: const Text("B")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: const Text("C")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 3;
                              });
                            },
                            child: const Text("D")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 4;
                              });
                            },
                            child: const Text("E")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 5;
                              });
                            },
                            child: const Text("F")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 6;
                              });
                            },
                            child: const Text("G")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 7;
                              });
                            },
                            child: const Text("H")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 8;
                              });
                            },
                            child: const Text("I")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 9;
                              });
                            },
                            child: const Text("J")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 10;
                              });
                            },
                            child: const Text("K")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 11;
                              });
                            },
                            child: const Text("L")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 12;
                              });
                            },
                            child: const Text("M")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 13;
                              });
                            },
                            child: const Text("N")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 14;
                              });
                            },
                            child: const Text("O")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 15;
                              });
                            },
                            child: const Text("P")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 16;
                              });
                            },
                            child: const Text("Q")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 17;
                              });
                            },
                            child: const Text("R")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 18;
                              });
                            },
                            child: const Text("S")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 19;
                              });
                            },
                            child: const Text("T")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 20;
                              });
                            },
                            child: const Text("U")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 21;
                              });
                            },
                            child: const Text("V")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 22;
                              });
                            },
                            child: const Text("W")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 23;
                              });
                            },
                            child: const Text("X")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 10.0, left: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 24;
                              });
                            },
                            child: const Text("Y")),
                        const SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                index = 25;
                              });
                            },
                            child: const Text("Z")),
                        const SizedBox(
                          width: 13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}