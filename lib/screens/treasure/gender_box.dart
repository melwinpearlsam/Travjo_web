import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  String name;
  Function(bool?) onchnaged;
  bool value;
  GenderBox(
      {Key? key,
      required this.name,
      required this.onchnaged,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 45,
        width: 120,
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: value ? Colors.red : Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(name),
              Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: const BorderSide(
                        width: 1, color: Color.fromARGB(255, 227, 226, 226))),
                value: value,
                onChanged: onchnaged,
                checkColor: Colors.white,
                activeColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
