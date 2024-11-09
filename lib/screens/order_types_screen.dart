import 'package:flutter/material.dart';

class OrderTypesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Types'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Limit'),
            subtitle: Text(
                'Automatically buy crypto if your custom price is reached.'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Market'),
            subtitle: Text('Buy crypto right now at the current market price.'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // Tambahkan tipe order lain jika diperlukan
        ],
      ),
    );
  }
}
