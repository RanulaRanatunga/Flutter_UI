import 'package:flutter/material.dart';

class GoalsProfileScreen extends StatefulWidget {
  GoalsProfileScreen({Key? key}) : super(key: key);

  @override
  State<GoalsProfileScreen> createState() => _GoalsProfileScreenState();
}

class _GoalsProfileScreenState extends State<GoalsProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
              backgroundColor: Colors.red,
            ),
            title: Column(
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome back, Marvin',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your financial situation is looking good',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: LinearProgressIndicator(
                        minHeight: 8,
                        value: 0.7,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('Beginner Level'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('XP 380/500'),
                          )
                        ],
                      ),
                    ),
                    TabBar(
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black.withOpacity(1),
                        indicatorColor: Colors.red,
                        tabs: const [
                          Tab(
                            child: Text('Today'),
                          ),
                          Tab(
                            child: Text('Monthly'),
                          ),
                          Tab(
                            child: Text('Yearly'),
                          ),
                          Tab(
                            child: Text('Future'),
                          ),
                        ]),
                  ],
                ),
                preferredSize: Size.fromHeight(80.0)),
            actions: const <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(Icons.menu),
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  Container(
                    height: 220,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Card(
                        color: Colors.blue,
                        elevation: 5,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
                                  backgroundColor: Colors.red,
                                ),
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Small stuff adds up!',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text(
                                          "Last Month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on pervious spending? ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                          maxLines: 20,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(width: 10),
                                    ),
                                    ElevatedButton(
                                        child: Text(
                                          "SETUP A GOAL".toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.transparent),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.transparent),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.zero,
                                                    side: BorderSide(
                                                        color: Colors.white)))),
                                        onPressed: () => null),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: const Text('18.03.2022'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  Container(
                    height: 220,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Card(
                        color: Colors.greenAccent,
                        elevation: 5,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
                                  backgroundColor: Colors.red,
                                ),
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Small stuff adds up!',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text(
                                          "Last Month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on pervious spending? ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                          maxLines: 20,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(width: 10),
                                    ),
                                    ElevatedButton(
                                        child: Text(
                                          "SETUP A GOAL".toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.transparent),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.transparent),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.zero,
                                                    side: BorderSide(
                                                        color: Colors.white)))),
                                        onPressed: () => null),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: const Text('18.03.2022'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  Container(
                    height: 220,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Card(
                        color: Colors.purpleAccent,
                        elevation: 5,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
                                  backgroundColor: Colors.red,
                                ),
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Small stuff adds up!',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text(
                                          "Last Month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on pervious spending? ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                          maxLines: 20,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(width: 10),
                                    ),
                                    ElevatedButton(
                                        child: Text(
                                          "SETUP A GOAL".toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.transparent),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.transparent),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.zero,
                                                    side: BorderSide(
                                                        color: Colors.white)))),
                                        onPressed: () => null),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: const Text('18.03.2022'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  Container(
                    height: 220,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Card(
                        color: Colors.pinkAccent,
                        elevation: 5,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
                                  backgroundColor: Colors.red,
                                ),
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Small stuff adds up!',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text(
                                          "Last Month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on pervious spending? ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                          maxLines: 20,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(width: 10),
                                    ),
                                    ElevatedButton(
                                        child: Text(
                                          "SETUP A GOAL".toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.transparent),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.transparent),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.zero,
                                                    side: BorderSide(
                                                        color: Colors.white)))),
                                        onPressed: () => null),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: const Text('18.03.2022'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                  )
                ],
              )),
              Container(
                child: const Center(
                  child: Text('Monthly'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Yearly'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Future'),
                ),
              ),
            ],
          )),
    );
  }
}
