import 'package:flutter/material.dart';

class OrderPreviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Preview'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('0.014 BTC', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Payment method: Mastercard - 5914'),
            SizedBox(height: 20),
            Text('Price: \$69,890.00'),
            Text('Transaction fee: \$0.21'),
            Text('Total: \$1,000.21'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/summary');
              },
              child: Text('Execute Order'),
            ),
          ],
        ),
      ),
    );
  }
}
