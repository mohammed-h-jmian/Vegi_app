import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: primaryColor,
        title: const Text(
          'Home',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: const [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd1ad17),
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd1ad17),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.liveinhomecare.com/wp-content/uploads/2020/09/vegetables-that-are-healthier-for-you-cooked-than-raw.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(146, 0, 0, 0),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 170,
                              bottom: 10,
                            ),
                            child: Container(
                              height: 50,
                              width: 80,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 22, top: 10),
                                child: Stack(
                                  children: <Widget>[
                                    // Stroked text as border.
                                    Text(
                                      'Vegi',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 5
                                          ..color = const Color.fromARGB(
                                              255, 0, 124, 17),
                                      ),
                                    ),
                                    // Solid text as fill.
                                    Text(
                                      'Vegi',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: const BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                  topLeft: Radius.circular(13),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Stack(
                              children: <Widget>[
                                // Stroked text as border.
                                Text(
                                  '30%Off',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 8
                                      ..color =
                                          const Color.fromARGB(255, 0, 124, 17),
                                  ),
                                ),
                                // Solid text as fill.
                                Text(
                                  '30%Off',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'On all vegetables products',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'ْ data data data',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 5,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Expanded(
                  //   child: Container(),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Herbs Seasonings',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                        color: Color.fromARGB(115, 124, 124, 124)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    '50 Gram',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  ),
                                                ),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd1ad17),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,

                                                // بدي احولها ل ليست تايل أفضل
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd4d181),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd4d181),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //2
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Herbs Seasonings',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                        color: Color.fromARGB(115, 124, 124, 124)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd1ad17),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd1ad17),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd4d181),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd1ad17)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //3
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Herbs Seasonings',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                        color: Color.fromARGB(115, 124, 124, 124)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd4d181),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd4d181),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 270,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                                'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg'),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Fresh Basil',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    "50\$/50 Gram",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                //color: Colors.red,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                  '50 Gram',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )),
                                                Center(
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 20,
                                                    color: Color(0xffd4d181),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                //     color: Colors.black,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 212, 212, 212)),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: TextStyle(
                                                        //         fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xffd4d181)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
