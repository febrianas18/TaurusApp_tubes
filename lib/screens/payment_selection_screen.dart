import 'package:flutter/material.dart';

class PaymentSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Account'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('USD Balance - \$19,758.00'),
            onTap: () {
              Navigator.pop(context, 'USD Balance - \$19,758.00');
            },
          ),
          ListTile(
            title: Text('Visa - 7890'),
            onTap: () {
              Navigator.pop(context, 'Visa - 7890');
            },
          ),
          ListTile(
            title: Text('Mastercard - 5914'),
            onTap: () {
              Navigator.pop(context, 'Mastercard - 5914');
            },
          ),
        ],
      ),
    );
  }
}
