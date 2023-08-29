import 'package:contacts/screens/contact_list.dart';
import 'package:contacts/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'controller/controller.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final controller = Get.put(contactlistController());
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
                Get.off(ContactList());
                controller.getcontactlist();
                Get.snackbar("Saved Contact", "Contact Saved Successfully",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              prefixIcon: const Icon(
                                Icons.person_4_outlined,
                                color: Colors.white70,
                              ),
                              labeltext: "First Name",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Can not Be Empty';
                                }
                              },
                              obscureText: false)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              labeltext: "Last Name",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Can not Be Empty';
                                }
                              },
                              obscureText: false)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
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
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              keyboardType: TextInputType.number,
                              prefixIcon: const Icon(
                                Icons.phone,
                                color: Colors.white70,
                              ),
                              labeltext: "Phone",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Can not Be Empty';
                                }
                              },
                              obscureText: false)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              keyboardType: TextInputType.emailAddress,
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Colors.white70,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Can not Be Empty';
                                } else if (RegExp(
                                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                        .hasMatch(value) !=
                                    true) {
                                  return 'enter valid email id';
                                }
                              },
                              labeltext: "Email",
                              obscureText: false)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              prefixIcon: const Icon(
                                Icons.house,
                                color: Colors.white70,
                              ),
                              labeltext: "Other Phone",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Can not Be Empty';
                                }
                              },
                              obscureText: false))
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      SizedBox(
                          width: 350,
                          child: MyTextField(
                              prefixIcon: const Icon(
                                Icons.house,
                                color: Colors.white70,
                              ),
                              labeltext: "Other Email",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Can not Be Empty';
                                }
                              },
                              obscureText: false))
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      Container(
                          width: 350,
                          decoration: const ShapeDecoration(
                            shape: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blueGrey),
                            ),
                          ),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            onTap: () {
                              showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      titleTextStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800),
                                      backgroundColor: Colors.grey.shade900,
                                      surfaceTintColor: Colors.grey.shade900,
                                      title: const Text("Select Country"),
                                      content: Container(
                                        color: Colors.grey.shade900,
                                        height: 600,
                                        width: 300,
                                        child: Container(
                                          height: 500,
                                          child: ListView.builder(
                                              itemCount:
                                                  controller.countryList.length,
                                              itemBuilder: (context, index) =>
                                                  ListTile(
                                                    title: Text(
                                                      "${controller.countryList[index]['name']}",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                  )),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            title: const Text(
                              "Select Country",
                              style: TextStyle(color: Colors.white54),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      Container(
                          width: 350,
                          decoration: const ShapeDecoration(
                            shape: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blueGrey),
                            ),
                          ),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            onTap: () {
                              showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      titleTextStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800),
                                      backgroundColor: Colors.grey.shade900,
                                      surfaceTintColor: Colors.grey.shade900,
                                      title: const Text(
                                        "Select State",
                                      ),
                                      content: Container(
                                        color: Colors.grey.shade900,
                                        height: 600,
                                        width: 300,
                                        child: Container(
                                          height: 500,
                                          child: ListView.builder(
                                              itemCount:
                                                  controller.stateList.length,
                                              itemBuilder: (context, index) =>
                                                  ListTile(
                                                    title: Text(
                                                      "${controller.stateList[index]['state']}",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                  )),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            title: const Text(
                              "Select State",
                              style: TextStyle(color: Colors.white54),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 5),
                      Container(
                          width: 350,
                          decoration: const ShapeDecoration(
                            shape: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blueGrey),
                            ),
                          ),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            onTap: () {
                              showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      titleTextStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800),
                                      backgroundColor: Colors.grey.shade900,
                                      surfaceTintColor: Colors.grey.shade900,
                                      title: const Text(
                                        "Select City",
                                      ),
                                      content: Container(
                                        color: Colors.grey.shade900,
                                        height: 600,
                                        width: 300,
                                        child: Container(
                                          height: 500,
                                          child: ListView.builder(
                                              itemCount:
                                                  controller.cityList.length,
                                              itemBuilder: (context, index) =>
                                                  ListTile(
                                                    title: Text(
                                                      "${controller.cityList[index]['city']}",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                  )),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            title: const Text(
                              "Select City",
                              style: TextStyle(color: Colors.white54),
                            ),
                          ))
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
