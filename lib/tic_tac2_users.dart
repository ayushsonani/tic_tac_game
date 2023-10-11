//import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Damo(),
    debugShowCheckedModeBanner: false,
  ));
}

class Damo extends StatefulWidget {
  const Damo({super.key});

  @override
  State<Damo> createState() => _DamoState();
}

class _DamoState extends State<Damo> {
  List x = List.filled(9, "", growable: false);
  int j = 0;
  List y = ["x", "o", "x", "o", "x", "o", "x", "o", "x", "o"];
  List cor = List.filled(9, Colors.black12, growable: false);
  String tame = "x";
  String won = "";
  String Over_text = "";
  bool Condition = true;

  logic(int n) {
    if (Condition == true) {
      if (x[n] == "") {
        x[n] = y[j];
        j++;
      }

      if (x[n] == "x") {
        cor[n] = Colors.deepPurpleAccent;
        tame = y[j];
      } else if (x[n] == "o") {
        cor[n] = Colors.yellowAccent;
        tame = y[j];
      }
    }

    for (int i = 0; i < x.length; i++) {
      if (x[0] == "x" && x[1] == "x" && x[2] == "x" ||
          x[0] == "o" && x[1] == "o" && x[2] == "o") {
        if (x[0] == "x" && x[1] == "x" && x[2] == "x") {
          won = "x";
          Over_text = " Team X WON ";
          Condition = false;
        } else if (x[0] == "o" && x[1] == "o" && x[2] == "o") {
          won = "o";
          Over_text = "  Team O WON";
          Condition = false;
        }
      } else if (x[3] == "x" && x[4] == "x" && x[5] == "x" ||
          x[3] == "o" && x[4] == "o" && x[5] == "o") {
        if (x[3] == "x" && x[4] == "x" && x[5] == "x") {
          won = "x";
          Over_text = "  Team X WON ";
          Condition = false;
        } else if (x[3] == "o" && x[4] == "o" && x[5] == "o") {
          won = "o";
          Over_text = "  Team O WON";
          Condition = false;
        }
      } else if (x[6] == "x" && x[7] == "x" && x[8] == "x" ||
          x[6] == "o" && x[7] == "o" && x[8] == "o") {
        if (x[6] == "x" && x[7] == "x" && x[8] == "x") {
          won = "x";
          Over_text = " Team X WON ";
          Condition = false;
        } else if (x[6] == "o" && x[7] == "o" && x[8] == "o") {
          won = "o";
          Over_text = " Team O WON ";
          Condition = false;
        }
      } else if (x[0] == "x" && x[3] == "x" && x[6] == "x" ||
          x[0] == "o" && x[3] == "o" && x[6] == "o") {
        if (x[0] == "x" && x[3] == "x" && x[6] == "x") {
          won = "x";
          Over_text = "  Team X WON ";
          Condition = false;
        } else if (x[0] == "o" && x[3] == "o" && x[6] == "o") {
          won = "o";
          Over_text = " Team O WON ";
          Condition = false;
        }
      } else if (x[1] == "x" && x[4] == "x" && x[7] == "x" ||
          x[1] == "o" && x[4] == "o" && x[7] == "o") {
        if (x[1] == "x" && x[4] == "x" && x[7] == "x") {
          won = "x";
          Over_text = "  Team X WON ";
          Condition = false;
        } else if (x[1] == "o" && x[4] == "o" && x[7] == "o") {
          won = "o";
          Over_text = " Team O WON ";
          Condition = false;
        }
      } else if (x[2] == "x" && x[5] == "x" && x[8] == "x" ||
          x[2] == "o" && x[5] == "o" && x[8] == "o") {
        if (x[2] == "x" && x[5] == "x" && x[8] == "x") {
          won = "x";
          Over_text = "  Team X WON ";
          Condition = false;
        } else if (x[2] == "o" && x[5] == "o" && x[8] == "o") {
          won = "o";
          Over_text = " Team O WON ";
          Condition = false;
        }
      } else if (x[0] == "x" && x[4] == "x" && x[8] == "x" ||
          x[0] == "o" && x[4] == "o" && x[8] == "o") {
        if (x[0] == "x" && x[4] == "x" && x[8] == "x") {
          won = "x";
          Over_text = " Team X WON ";
          Condition = false;
        } else if (x[0] == "o" && x[4] == "o" && x[8] == "o") {
          won = "o";
          Over_text = " Team O WON ";
          Condition = false;
        }
      } else if (x[2] == "x" && x[4] == "x" && x[6] == "x" ||
          x[2] == "o" && x[4] == "o" && x[6] == "o") {
        if (x[2] == "x" && x[4] == "x" && x[6] == "x") {
          won = "x";
          Over_text = "  Team X WON ";
          Condition = false;
        } else if (x[2] == "o" && x[4] == "o" && x[6] == "o") {
          won = "o";
          Over_text = " Team O WON ";
          Condition = false;
        }
      }
    }
    bool over = false;
    for (int j = 0; j < 9; j++) {
      if (x[j] == "x" || x[j] == "o") {
        over = true;
      } else {
        over = false;
        break;
      }
    }

    if (over == true) {
      Over_text = " Please Restart";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      " Team :=  $tame",
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      " Win := $won",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
            Text(Over_text, style: TextStyle(fontSize: 25, color: Colors.red)),
            Container(
              width: 250,
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => logic(0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[0],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[0]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () => logic(1),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[1],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[1]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () => logic(2),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[2],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[2]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => logic(3),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[3],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[3]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () => logic(4),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[4],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[4]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () => logic(5),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[5],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[5]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => logic(6),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[6],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[6]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () => logic(7),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[7],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[7]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () => logic(8),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: cor[8],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text("${x[8]}",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  for (int i = 0; i < 9; i++) {
                    x[i] = "";
                    y[i] = "";
                    cor[i] = "";
                    won = "";
                    tame = "";
                    Over_text = "";
                    Condition = false;
                  }
                  setState(() {});
                  x = List.filled(9, "", growable: false);
                  j = 0;
                  y = ["x", "o", "x", "o", "x", "o", "x", "o", "x", "o"];
                  cor = List.filled(9, Colors.black12, growable: false);
                  tame = "x";
                  Over_text = "";
                  Condition = true;
                },
                child: Text(
                  " restart ",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.yellowAccent),
                )),
          ],
        ),
      ),
    );
  }
}
