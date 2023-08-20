import 'package:flutter/material.dart';

class SingleContact extends StatelessWidget {
  const SingleContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
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
              onPressed: () {},
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                    style: TextStyle(color: Colors.black, fontSize: 80),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Vikas",
                  style: TextStyle(
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
                          size: 35,
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
                          size: 35,
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
                          size: 35,
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
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Column(
                children: [
                  Row(
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
                  SizedBox(height: 15),
                  ListTile(
                      leading: Icon(
                        Icons.phone_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        "9667915732",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(
                        "Mobile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: Icon(
                        Icons.videocam_outlined,
                        color: Colors.white,
                        size: 30,
                      )),
                  SizedBox(height: 15),
                  ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "vikkubharti69@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      "Work",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 15),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "Shakur Pur, Delhi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      "India",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
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
    );
  }
}
