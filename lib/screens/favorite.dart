import 'package:contacts/screens/controller/controller.dart';
import 'package:contacts/screens/single_contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class FavoriteContacts extends StatefulWidget {
  const FavoriteContacts({super.key});

  @override
  State<FavoriteContacts> createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(contactlistController());
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
          child: Obx(
            () => controller.favoritelist.isEmpty
                ? Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: Colors.grey.shade600,
                      child: const Text(
                        'Loading...... ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                : Scrollbar(
                    thickness: 5,
                    interactive: true,
                    radius: const Radius.circular(25),
                    scrollbarOrientation: ScrollbarOrientation.right,
                    child: ListView.builder(
                      itemCount: controller.favoritelist.length,
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
                            title: Text(
                              controller.conatctlist[index]['first_name'] ?? '',
                              style: const TextStyle(
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
          ),
        ),
      ),
    );
  }
}
