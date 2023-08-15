import 'package:flutter/material.dart';
Widget miDrawer({required BuildContext context,required String imagePath}) {
  return Drawer(
      backgroundColor: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Column(
          children: [
             CircleAvatar(
              radius: 130,
              backgroundImage: AssetImage(
                imagePath,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'powered by ',
                  // style: nunitoStyle,
                ),
                Text(
                  'MILAD ALSABBGH',
                  // style:
                  //  GoogleFonts.charm(fontSize: 20, color: Colors.white),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15.0, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 5.0,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextButton(
                  onPressed: () {
                    // cubit(context).signOut().then((value) {
                    //   navigateTo(context, LogIn());
                    // });
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        'Sign Out',
                        // style: nunitoStyle,
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // navigateTo(context, const About());
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        'About&Contact',
                        // style: nunitoStyle,
                      )
                    ],
                  )),
            )
          ],
        ),
      ));
}
//wrapping it with blocConsumer to add functions
//change image to match app logo