import 'package:flutter/material.dart';
import 'package:pancake_railways/src/screens/tickets_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
              'Get your Ticket',
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Text(
                'With Pancake Railways, we deliver you directly to the best breakfast destinations in the world. Purchase your pass today!',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TicketsPage(
                              title: 'Choose your ticket',
                            )));
                },
                child: const Text('Get Tickets'))
          ],
        ),
      ),
    );
  }
}
