import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      body: SingleChildScrollView(
        child: Column(
          children: contactList
              .map(
                (contact) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (){

                    },
                    tileColor: Colors.blueGrey.shade100,
                    leading: CircleAvatar(
                      child: Icon(Icons.person, color: Colors.blue.shade800),
                    ),
                    title: Text(contact.name),
                    subtitle: Text(contact.mobile),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.call, color: Colors.blue.shade800),
                        Text('Call')
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Padding contact(Contact contact) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Divider(height: 1.5, color: Colors.black)],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class Contact {
  String name;
  String mobile;

  Contact({required this.name, required this.mobile});
}

final contactList = [
  Contact(name: 'akash', mobile: '16846546523'),
  Contact(name: 'roshni', mobile: '123648456546'),
  Contact(name: 'riyad', mobile: '123648456546'),
  Contact(name: 'sakib', mobile: '123648456546'),
  Contact(name: 'api', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
  Contact(name: 'akash', mobile: '123648456546'),
];
