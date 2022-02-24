import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final dynamic buttonMark;
  final Color? color;
  void Function()? onTap;

  Button({Key? key, required this.buttonMark, this.color, required onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: buttonMark == "="
            ? MediaQuery.of(context).size.height * 0.24
            : MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          color: color ?? Colors.indigo.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.indigo.shade700,
              offset: const Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.indigo.shade200,
              offset: const Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: buttonMark is String
            ? Text(
                '$buttonMark',
                style: TextStyle(
                  color: color == null ? Colors.white : Colors.cyan,
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              )
            : Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    buttonMark,
                    textDirection: TextDirection.rtl,
                    color: Colors.cyan,
                    size: 35,
                  ),
                  const Icon(
                    Icons.close,
                    color: Colors.cyan,
                  ),
                ],
              ),
      ),
    );
  }
}
