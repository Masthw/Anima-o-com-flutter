import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField(
      {Key? key,
      required this.hint,
      required this.obscure,
      required this.icon});

  final String hint;
  final bool obscure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: TextFormField(
          obscureText: obscure,
          style: const TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            contentPadding: const EdgeInsets.only(
                top: 30.0, right: 30, bottom: 30, left: 5),
          )),
    );
  }
}
