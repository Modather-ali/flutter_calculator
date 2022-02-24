import 'package:flutter/material.dart';
import 'package:ui_developing/frontend/button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late num firstNumber;
  late num secondNumber;
  // late String operation;
  late String operationType;

  @override
  Widget build(BuildContext context) {
    // if (firstNumber.toString().isEmpty) {
    //   operation = '';
    // } else {
    //   if (operationType.toString().isEmpty) {
    //     operation = '$firstNumber';
    //   } else {
    //     if (secondNumber.toString().isEmpty) {
    //       operation = "$firstNumber $operation";
    //     } else {
    //       operation = "$firstNumber $operation $secondNumber";
    //     }
    //   }
    // }
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _numbersPad(),
          _result(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onTap: () {},
                        buttonMark: "C",
                        color: Colors.deepPurple.shade300),
                    Button(
                      onTap: () {
                        if (operationType.isEmpty) {
                          firstNumber += 7;
                        } else {
                          secondNumber += 7;
                        }
                        setState(() {});
                      },
                      buttonMark: "7",
                    ),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 4;
                          } else {
                            secondNumber += 4;
                          }
                          setState(() {});
                        },
                        buttonMark: "4"),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 1;
                          } else {
                            secondNumber += 1;
                          }
                          setState(() {});
                        },
                        buttonMark: "1"),
                    Button(onTap: () {}, buttonMark: "%"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onTap: () {},
                        buttonMark: "/",
                        color: Colors.deepPurple.shade300),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 8;
                          } else {
                            secondNumber += 8;
                          }
                          setState(() {});
                        },
                        buttonMark: "8"),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 5;
                          } else {
                            secondNumber += 5;
                          }
                          setState(() {});
                        },
                        buttonMark: "5"),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 2;
                          } else {
                            secondNumber += 2;
                          }
                          setState(() {});
                        },
                        buttonMark: "2"),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 0;
                          } else {
                            secondNumber += 0;
                          }
                          setState(() {});
                        },
                        buttonMark: "0"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onTap: () {},
                        buttonMark: "X",
                        color: Colors.deepPurple.shade300),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 9;
                          } else {
                            secondNumber += 9;
                          }
                          setState(() {});
                        },
                        buttonMark: "9"),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 6;
                          } else {
                            secondNumber += 6;
                          }
                          setState(() {});
                        },
                        buttonMark: "6"),
                    Button(
                        onTap: () {
                          if (operationType.isEmpty) {
                            firstNumber += 3;
                          } else {
                            secondNumber += 3;
                          }
                          setState(() {});
                        },
                        buttonMark: "3"),
                    Button(onTap: () {}, buttonMark: "."),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onTap: () {},
                        buttonMark: Icons.label_outline_rounded,
                        color: Colors.deepPurple.shade300),
                    Button(
                        onTap: () {},
                        buttonMark: "-",
                        color: Colors.deepPurple.shade300),
                    Button(
                        onTap: () {},
                        buttonMark: "+",
                        color: Colors.deepPurple.shade300),
                    Button(
                        onTap: () {},
                        buttonMark: "=",
                        color: Colors.deepPurple.shade300),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _numbersPad() {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.indigo.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        // operation,
        "99 + 1",
        maxLines: 2,
        style: TextStyle(
          color: Colors.white,
          fontSize: 27,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _result() {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.07,
      child: const Text(
        "100",
        maxLines: 2,
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.grey,
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
