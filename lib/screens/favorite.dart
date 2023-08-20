import 'package:contacts/screens/single_contact.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatefulWidget {
  const FavoriteContacts({super.key});

  @override
  State<FavoriteContacts> createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xff1C1B1F,
        ),
        title: const Text(
          "Favorites",
          style: TextStyle(color: Colors.white70),
        ),
      ),
      backgroundColor: Color(0xff1C1B1F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 900,
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) => SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 5, right: 5),
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SingleContact(),
                            ));
                          },
                          onLongPress: () {},
                          title: const Text(
                            "Vikas Bharti",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          leading: CircleAvatar(
                            child: Text("${index + 1}"),
                            backgroundColor: Colors.blueGrey,
                          ),
                          tileColor: Color(0xff1C1B1F),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
