import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1B1F),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white70,
            )),
        title: const Text(
          "Add New Contact",
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: Color(0xff1C1B1F),
      ),
    );
  }
}
