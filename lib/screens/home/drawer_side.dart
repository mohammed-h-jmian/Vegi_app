import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile({String? title, IconData? iconData, Function? onTap1}) {
    return ListTile(
      //   onTap: onTap1,
      leading: Icon(iconData, size: 32),
      title: Text(
        title!,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Welcome Guest',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,

                        ///////
                        // Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 25,
                            width: 90,
                            decoration: BoxDecoration(
                              //     color: Colors.black,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  'LOGIN',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    //          color: Color.fromARGB(255, 39, 39, 39)
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                ListTile(
                    leading: Icon(Icons.home_outlined), title: Text('Home')),
                ListTile(
                    leading: Icon(Icons.shopping_bag_outlined),
                    title: Text('Review Cart')),
                ListTile(
                    leading: Icon(Icons.person_outlined),
                    title: Text('My Profile')),
                ListTile(
                    leading: Icon(Icons.notifications_outlined),
                    title: Text('Notification')),
                ListTile(
                    leading: Icon(Icons.star_outline),
                    title: Text('Rating & Review')),
                ListTile(
                    leading: Icon(Icons.favorite_border),
                    title: Text('Wishlist')),
                ListTile(
                    leading: Icon(Icons.feed_outlined),
                    title: Text('Raise a Compiaint')),
                ListTile(
                    leading: Icon(Icons.question_answer_outlined),
                    title: Text('FAQs')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
