import 'package:flutter/material.dart';
import 'package:pancake_railways/src/widgets/ticket_card.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

// on this page, clicking on a ticket should make it actively selected within the listtile
// once selected, the button at the bottom of the page should be active
// that's what makes this component stateful

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget> [
              const TicketCard(ticketTitle: "Basic Breakfast", description: "Get on board, and access the fantastic breakfast cart.", icon: Icons.breakfast_dining_rounded),
              const TicketCard(ticketTitle: "Super Syrup", description: "Meal service at your seat. Plus, get first pick of seats.", icon: Icons.new_label_rounded),
              const TicketCard(ticketTitle: "Fantastmic Flapjack", description: "Top quality breakfast service and your own cabin.", icon: Icons.star),
              ElevatedButton(onPressed: () => print("Hello"), child: Text("Activate Ticket"))
            ],
          )
      ),
    );
  }
}