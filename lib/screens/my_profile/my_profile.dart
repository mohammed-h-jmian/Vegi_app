import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/home/drawer_side.dart';

class myProfile extends StatelessWidget {
  const myProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: primaryColor,
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
      drawer: DrawerSide(

          /// userProvider: widget.userProvider,
          ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6.8,
                color: primaryColor,
              ),
              Container(
                height: 548,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    //  userData.userName,
                                    'Mohammed H. Jmian',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: textColor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('m.h.jmian@gmail.com'),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: primaryColor,
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(
                                    Icons.edit,
                                    color: primaryColor,
                                  ),
                                  backgroundColor: scaffoldBackgroundColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const ListTile(
                      leading: Icon(Icons.shop_outlined),
                      title: Text("My Orders"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    const ListTile(
                      leading: Icon(Icons.location_on_outlined),
                      title: Text("My Delivery Address"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    const ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text("Refer A Friends"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    const ListTile(
                      leading: Icon(Icons.file_copy_outlined),
                      title: Text("Terms & Conditions"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    const ListTile(
                      leading: Icon(Icons.policy_outlined),
                      title: Text("Privacy Policy"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    const ListTile(
                      leading: Icon(Icons.add_chart),
                      title: Text("About"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    const ListTile(
                      leading: Icon(Icons.exit_to_app_outlined),
                      title: Text("Log Out"),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 65, left: 30),
            child: CircleAvatar(
              radius: 53,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    //  userData.userImage ??
                    "https://scontent.fgza9-1.fna.fbcdn.net/v/t39.30808-1/243020458_1518437381871154_5136300571977095708_n.jpg?stp=dst-jpg_p320x320&_nc_cat=106&ccb=1-6&_nc_sid=7206a8&_nc_ohc=r99At4O-_K4AX8i_PZ2&_nc_ht=scontent.fgza9-1.fna&oh=00_AT-A5Fcbp8APEc6HsiCWTb8eS5ZfQSW2uFGckzWycVX1BA&oe=6286EDAC",
                  ),
                  radius: 45,
                  backgroundColor: scaffoldBackgroundColor),
            ),
          )
        ],
      ),
    );
  }
}
