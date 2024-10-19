import 'package:flutter/material.dart';

class Call {
  final String name;
  final String time;
  final String phoneNumber;
  final bool isIncoming;

  Call({
    required this.name,
    required this.time,
    required this.phoneNumber,
    required this.isIncoming,
  });
}

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<Calls> {
  final List<Call> _calls = [
    Call(
      name: 'Muzzamil',
      time: 'Yesterday, 10:00 PM',
      phoneNumber: '1234567890',
      isIncoming: true,
    ),
    Call(
      name: 'Mubashir',
      time: 'Yesterday, 9:00 PM',
      phoneNumber: '9876543210',
      isIncoming: false,
    ),
    Call(
      name: 'Tariq',
      time: 'Yesterday, 8:00 PM',
      phoneNumber: '5551234567',
      isIncoming: true,
    ),
    Call(
      name: 'Hamza',
      time: 'Yesterday, 7:00 PM',
      phoneNumber: '9012345678',
      isIncoming: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              print("More options pressed");
            },
          ),
        ],
        backgroundColor:Color.fromARGB(255, 28, 139, 86),
        title: Text(
          'Calls',
          style: const TextStyle(color: Colors.white),
        ),
      ),

      body: ListView.builder(
        itemCount: _calls.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(_calls[index].name[0].toUpperCase()),
            ),
            title: Text(_calls[index].name),
            subtitle: Text(_calls[index].time),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _calls[index].isIncoming
                    ? const Icon(Icons.call_received)
                    : const Icon(Icons.call_made),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // Make a call to the selected contact
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}