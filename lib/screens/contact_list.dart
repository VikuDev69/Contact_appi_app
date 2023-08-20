import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                  height: 50,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 52, 57, 71),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide:
                                BorderSide(style: BorderStyle.none, width: 0)),
                        hintStyle: TextStyle(color: Colors.white54),
                        hintText: "Search Contacts",
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.white54,
                        )),
                  )),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: ListView.builder(
                    itemBuilder: (context, index) => ListTile(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(35))),
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 52, 57, 71),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
