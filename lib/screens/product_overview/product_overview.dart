import 'package:flutter/material.dart';
import 'package:food_app/main.dart';

class ProductOverview extends StatelessWidget {
  const ProductOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffd1ad17),
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          'Product Overview',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text('Fresh Basil',
                      style: TextStyle(
                          color: Color.fromARGB(255, 46, 46, 46),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    '\$ 50',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 161, 48),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Image.network(
                  'https://www.qisofreshtohome.com/wp-content/uploads/2020/01/Basil.jpg',
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Text('Available Options',
                      style: TextStyle(
                          color: Color.fromARGB(255, 46, 46, 46),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.green[700],
                      ),
                      Radio(
                        activeColor: Colors.green[700],
                        onChanged: (null),
                        value: ProductOverview,
                        groupValue: null,
                      ),
                      const Expanded(
                        child: Text(
                          "50 Gram",
                          style: TextStyle(
                              color: Color.fromARGB(255, 46, 46, 46),
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "\$ 50",
                          style: TextStyle(
                              color: Color.fromARGB(255, 46, 46, 46),
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(
                              //     color: Colors.black,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 212, 212, 212)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '+',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color(0xffd1ad17)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ADD',
                                  style: TextStyle(
                                      //         fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color(0xffd1ad17)),
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
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 5),
                  child: Text('Available Options',
                      style: TextStyle(
                          color: Color.fromARGB(255, 46, 46, 46),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    '''Originally native to India, Asia, and Africa, basil was held to be a sacred and noble herb. In fact, the word "basil" comes from the ancient Greek "basilikhon"which means "royal".''',
                    style: TextStyle(
                      color: Color.fromARGB(255, 46, 46, 46),
                      //  fontSize: 20,
                      //    fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const Text(
                  '''Today, Ocimum basilicum (the scientific name for''',
                  style: TextStyle(
                    color: Color.fromARGB(255, 46, 46, 46),
                    //  fontSize: 20,
                    //    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Expanded(
                child: ListTile(
                  tileColor: Color.fromARGB(255, 29, 29, 29),
                  leading: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    'Add To Wishlist',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  tileColor: Color(0xffd1ad17),
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                    size: 20,
                  ),
                  title: Text(
                    'Go To Cart',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
