import 'package:flutter/material.dart';

class TicketCard extends StatefulWidget {
  const TicketCard({
    Key? key, 
    required this.ticketTitle,
    required this.description
  }) : super(key: key);

  final String ticketTitle;
  final String description;

  @override
  State<TicketCard> createState() => _TicketCard();
}

class _TicketCard extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.ticketTitle, 
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(widget.description),
          IconButton(onPressed: () => print("hellow"), icon: const Icon(Icons.add))
        ],
      )
    );
  }
}
