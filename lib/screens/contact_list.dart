import 'package:contacts/screens/add_contact.dart';
import 'package:contacts/screens/controller/controller.dart';
import 'package:contacts/screens/single_contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(contactlistController());
    return Scaffold(
      backgroundColor: Color(0xff1C1B1F),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Container(
              color: Color(0xff1C1B1F),
              padding: const EdgeInsets.all(16),
              child: Container(
                  height: 50,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Color(0xff2A2E36),
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
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Obx(
            () => controller.conatctlist.isEmpty
                ? Center(
                    child: SizedBox(
                      width: 200.0,
                      height: 100.0,
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
                    ),
                  )
                : Scrollbar(
                    thickness: 5,
                    interactive: true,
                    radius: const Radius.circular(25),
                    scrollbarOrientation: ScrollbarOrientation.right,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.conatctlist.length,
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
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(35))),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddContact()));
        },
        backgroundColor: const Color(0xff2A2E36),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
