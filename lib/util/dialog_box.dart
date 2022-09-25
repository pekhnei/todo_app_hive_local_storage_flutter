import 'package:flutter/material.dart';

import 'package:todo_app_hive_local_storage_flutter/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;


  const DialogBox({
    Key? key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // get user input
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), helperText: "Add a new task"),
          ),
          // buttons -> save + cancel
          Row(
            children: [
              // save botton
              MyButton(
                text: "Save",
                onPressed: onSave,
              ),
              const SizedBox(width: 8),
              MyButton(
                text: "Cancel",
                onPressed: onCancel,
              )
              // cancel button
            ],
          )
        ]),
      ),
    );
  }
}
