import 'package:flutter/material.dart';

class BuyCryptoScreen extends StatefulWidget {
  @override
  _BuyCryptoScreenState createState() => _BuyCryptoScreenState();
}

class _BuyCryptoScreenState extends State<BuyCryptoScreen> {
  // Default payment method
  String _selectedPaymentMethod = 'Visa - 7890';
  final double _limitPrice = 65000.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Crypto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Limit price is fixed and displayed as text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Limit price',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$$_limitPrice',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                hintText: '\$1,000',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(_selectedPaymentMethod),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () async {
                // Navigate to the payment selection screen and get result
                final result = await Navigator.pushNamed(context, '/payment');
                if (result != null) {
                  setState(() {
                    _selectedPaymentMethod = result as String;
                  });
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/preview');
              },
              child: Text('Review'),
            ),
          ],
        ),
      ),
    );
  }
}
