import 'package:flutter/material.dart';

class GoalsProfileScreen extends StatefulWidget {
  GoalsProfileScreen({Key? key}) : super(key: key);

  @override
  State<GoalsProfileScreen> createState() => _GoalsProfileScreenState();
}

class _GoalsProfileScreenState extends State<GoalsProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
                backgroundColor: Colors.red,
              ),
              Column(
                children: const [
                  Text('Welcome back, Marvin'),
                  Text('Your financial is looking good!')
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    minHeight: 8,
                    value: 0.7,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text('Beginner Level'), Text('XP 380/500')],
              ),
            ),
            DefaultTabController(
              length: 4,
              child: Stack(
                children: [
                  Container(
                    child: const TabBar(
                      indicatorColor: Colors.red,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          text: 'Today',
                        ),
                        Tab(
                          text: 'Monthly',
                        ),
                        Tab(
                          text: 'Yearly',
                        ),
                        Tab(
                          text: 'Future',
                        ),
                      ],
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
