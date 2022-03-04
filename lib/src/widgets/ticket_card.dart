import 'package:flutter/material.dart';

class TicketCard extends StatefulWidget {
  const TicketCard({
    Key? key,
    required this.ticketTitle,
    required this.description,
    required this.icon,
  }) : super(key: key);

  final String ticketTitle;
  final String description;
  final IconData icon;

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
        Padding(
            padding: const EdgeInsets.all(20),
            child: ListTile(
              leading: Icon(widget.icon, size: 42, color: Colors.blue),
              title: Text(widget.ticketTitle,
                  style: const TextStyle(fontSize: 22)),
              subtitle: Text(widget.description,
                  style: const TextStyle(fontSize: 16, height: 1.5)),
              minVerticalPadding: 10,
              onTap: () => {
                // make the selected ticket as the active one
                // reroute to the "active ticket" page
                print("hello, I've selected the ${widget.ticketTitle} ticket")
              },
            ))
      ],
    ));
  }
}
