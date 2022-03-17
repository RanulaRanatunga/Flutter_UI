import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  AddToCartScreen({Key? key}) : super(key: key);

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(250), // Image radius
              child: Image.asset(
                "assets/images/hand_watch.png",
                height: MediaQuery.of(context).size.height * 250,
              ),
            ),
          ),
        ),
        toolbarHeight: 300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    '\$165.98',
                    style: TextStyle(
                        color: Color.fromRGBO(169, 98, 62, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_box_rounded)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Band Type',
                  style: TextStyle(
                      color: Color.fromRGBO(168, 170, 171, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Strap',
                  style: TextStyle(
                      color: Color.fromRGBO(209, 209, 209, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Divider(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Band Width',
                    style: TextStyle(
                        color: Color.fromRGBO(168, 170, 171, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '18 mm',
                    style: TextStyle(
                        color: Color.fromRGBO(209, 209, 209, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Divider(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Bezel Material',
                      style: TextStyle(
                          color: Color.fromRGBO(168, 170, 171, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      'Stainless Steel',
                      style: TextStyle(
                          color: Color.fromRGBO(209, 209, 209, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Divider(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 15),
              child: RichText(
                text: const TextSpan(
                  text:
                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
                  style: TextStyle(color: Colors.black, fontSize: 14.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 15),
              child: RichText(
                text: const TextSpan(
                  text: 'Lorem ipsum dolor sit amet, consectetur.',
                  style: TextStyle(color: Colors.black, fontSize: 14.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextButton.icon(
                  onPressed: null,
                  icon: const SizedBox(
                    height: 30,
                    width: 250,
                    child: Center(
                      child: Text(
                        'ADD TO BAG',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  label: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(179, 115, 88, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: const BorderSide(
                                  color: Color.fromRGBO(179, 115, 88, 1)))))),
            )
          ],
        ),
      ),
    );
  }
}
