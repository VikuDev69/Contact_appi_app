import 'package:contacts/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1B1F),
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white70,
            )),
        title: const Text(
          "Add Contact",
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: const Color(0xff1C1B1F),
        actions: [
          TextButton(
              onPressed: () {
                Get.back();
                Get.snackbar("Saved Contact", "Contact Saved Successfully",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.black,
                    snackStyle: SnackStyle.FLOATING,
                    isDismissible: true,
                    dismissDirection: DismissDirection.down,
                    forwardAnimationCurve: Curves.decelerate,
                    reverseAnimationCurve: Curves.fastOutSlowIn,
                    duration: const Duration(milliseconds: 2000));
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Color.fromARGB(255, 117, 141, 252), fontSize: 20),
                ),
              ))
        ],
      ),
      body: Scrollbar(
        thickness: 5,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 77, 83, 111),
                    maxRadius: 50,
                    minRadius: 40,
                    child: Icon(
                      Icons.add_photo_alternate_outlined,
                      color: Color.fromARGB(255, 202, 221, 250),
                      size: 35,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Add picture",
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 141, 252),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              prefixIcon: Icon(
                                Icons.person_4_outlined,
                                color: Colors.white70,
                              ),
                              labeltext: "First Name",
                              obscureText: false)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              labeltext: "Last Name", obscureText: false)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              prefixIcon: Icon(
                                Icons.location_city,
                                color: Colors.white70,
                              ),
                              labeltext: "Company",
                              obscureText: false)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              keyboardType: TextInputType.number,
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.white70,
                              ),
                              labeltext: "Phone",
                              obscureText: false)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              keyboardType: TextInputType.number,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white70,
                              ),
                              labeltext: "Email",
                              obscureText: false)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              prefixIcon: Icon(
                                Icons.house,
                                color: Colors.white70,
                              ),
                              labeltext: "Flat/House no.",
                              obscureText: false))
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              prefixIcon: Icon(
                                Icons.house,
                                color: Colors.white70,
                              ),
                              labeltext: "Flat/House no.",
                              obscureText: false))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
