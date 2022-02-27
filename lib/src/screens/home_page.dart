import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/train.png'),
            ),
            const Icon(
              Icons.food_bank_sharp,
              color: Colors.pink,
              size: 55,
              semanticLabel: 'Food House Icon',
            ),
            const Text(
              'Purchase your Pancake Pass',
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'With Pancake Railways, we deliver you directly to the best breakfast destinations in the world. Purchase your pass today!',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: pressMe,
        tooltip: 'Add Ticket',
        child: Icon(Icons.train_sharp),
      ),
    );
  }
}

void pressMe() {
  print("Trying to purchase!");
}
