import 'package:flutter/material.dart';
import 'package:taurus_app/screens/order_preview_screen.dart';
import 'package:taurus_app/screens/order_summary_screen.dart';
import 'package:taurus_app/screens/order_types_screen.dart';
import 'package:taurus_app/screens/payment_selection_screen.dart';
import 'screens/buy_crypto_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Purchase App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BuyCryptoScreen(),
      routes: {
        '/buy': (context) => BuyCryptoScreen(),
        '/preview': (context) => OrderPreviewScreen(),
        '/payment': (context) => PaymentSelectionScreen(),
        '/summary': (context) => OrderSummaryScreen(),
        '/orderTypes': (context) => OrderTypesScreen(),
      },
    );
  }
}
