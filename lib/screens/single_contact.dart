import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:contacts/screens/controller/controller.dart';
import 'package:shimmer/shimmer.dart';

class SingleContact extends StatelessWidget {
  const SingleContact({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(contactlistController());
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white70,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_outlined,
                color: Colors.white70,
              )),
          IconButton(
              onPressed: () {
                Fluttertoast.showToast(
                    toastLength: Toast.LENGTH_SHORT,
                    // timeInSecForIosWeb: 1, By default time is 1 second
                    gravity: ToastGravity.BOTTOM,
                    msg: 'Added To Favorite',
                    backgroundColor: Colors.grey.shade900);
              },
              icon: const Icon(
                Icons.star_border,
                color: Colors.white70,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.white70,
              ))
        ],
      ),
      body: Scrollbar(
        thickness: 5,
        interactive: true,
        child: Obx(
          () => controller.singlecantact.isEmpty
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
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.singlecantact.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            maxRadius: 70,
                            minRadius: 60,
                            child: Text(
                              "V",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 80),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.singlecantact[index]['first_name'] +
                                    ' ' +
                                    controller.singlecantact[index]
                                        ['last_name'] ??
                                "",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff3F475A),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Icon(
                                    Icons.phone_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const SizedBox(
                                  child: Text(
                                    "Call",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff3F475A),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Icon(
                                    Icons.message_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const SizedBox(
                                  child: Text(
                                    "Text",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff3F475A),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Icon(
                                    Icons.videocam_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const SizedBox(
                                  child: Text(
                                    "Video",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 500,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: Color(0xff3F475A),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1, left: 5),
                                  child: Text(
                                    "Contact info",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 15),
                            ListTile(
                                leading: const Icon(
                                  Icons.phone_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                title: Text(
                                  controller.singlecantact[index]['phone'] ??
                                      "",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                subtitle: const Text(
                                  "Phone",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                trailing: const Icon(
                                  Icons.videocam_outlined,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            const SizedBox(height: 15),
                            ListTile(
                              leading: const Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              title: Text(
                                controller.singlecantact[index]['email'] ?? "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              subtitle: const Text(
                                "Work",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(height: 15),
                            ListTile(
                              leading: const Icon(
                                Icons.location_city,
                                color: Colors.white,
                                size: 30,
                              ),
                              title: Text(
                                controller.singlecantact[index]['other_city'] ??
                                    "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              subtitle: Text(
                                controller.singlecantact[index]['other_state'] +
                                        ", " +
                                        controller.singlecantact[index]
                                            ['other_code'] +
                                        "" +
                                        controller.singlecantact[index]
                                            ['other_country'] ??
                                    "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(height: 15),
                            ListTile(
                              leading: const Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 30,
                              ),
                              title: Text(
                                controller.singlecantact[index]['other_country']
                                        .isEmpty
                                    ? "India"
                                    : controller.singlecantact[index]
                                        ['other_country'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30)
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
