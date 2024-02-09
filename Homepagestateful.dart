import 'package:flutter/material.dart';

class Homepagestatful extends StatefulWidget {
  const Homepagestatful({super.key});
  @override
  State<StatefulWidget> createState() {
    return Stateful();
  }
}

class Stateful extends State<Homepagestatful> {
  late TextEditingController _t1;
  late TextEditingController _t2;
  late double _res = 0;

  @override
  void initState() {
    _t1 = TextEditingController();
    _t2 = TextEditingController();
    _res = 0;
    super.initState();
  }

  @override
  void dispose() {
    _t1.dispose();
    _t2.dispose();

    super.dispose();
  }

  void _addition() {
    double? n1 = double.tryParse(_t1.text);
    double? n2 = double.tryParse(_t2.text);
    setState(() {
      _res = (n1 ?? 0) + (n2 ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Addition'),
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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text(
                    'Enter 1st Number: ',
                    style:
                        TextStyle(fontSize: 15, fontFamily: 'Times New Roman'),
                  ),
                  Flexible(
                      child: TextField(
                    controller: _t1,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.deepPurpleAccent,
                        fontSize: 15),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 20),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text(
                    'Enter2nd Number : ',
                    style:
                        TextStyle(fontSize: 15, fontFamily: 'Times New Roman'),
                  ),
                  Flexible(
                      child: TextField(
                    controller: _t2,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                        fontFamily: 'Times New Roman',
                        color: Colors.deepPurpleAccent,
                        fontSize: 15),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 20),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addition,
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.indigoAccent,
                  textStyle: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      color: Colors.deepOrangeAccent,
                      fontFamily: 'Times New Roman'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('CLICK ME  '),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Result=',
                    style: TextStyle(
                        color: Colors.brown,
                        fontFamily: 'Times new Roman',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text('$_res',
                      style: TextStyle(
                          color: Colors.brown,
                          fontFamily: 'Times new Roman',
                          fontWeight: FontWeight.bold,
                          fontSize: 30))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
