import 'package:flutter/material.dart';

class Homepagestatful extends StatefulWidget {
  const Homepagestatful({super.key});
  @override
  State<StatefulWidget> createState() {
    return Stateful();
  }
}

class Stateful extends State<Homepagestatful> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('sasi'),
          centerTitle: true,
          actions: [
            CloseButton(
              color: Colors.brown,
              onPressed: () {},
            )
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(211, 78, 231, 7),
                  Color.fromARGB(197, 194, 209, 240),
                ],
              ),
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  Text(
                    'Enter your sNumber: ',
                    style: TextStyle(fontSize: 10),
                  ),
                ]),
                TextField(
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
