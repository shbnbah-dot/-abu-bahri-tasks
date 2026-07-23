
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/home.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(AbuBahriApp());
}
class AbuBahriApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'جدول أبو بحري',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Cairo'),
      home: HomeShell(),
    );
  }
}
class WatermarkScaffold extends StatelessWidget {
  final Widget child;
  final String title;
  const WatermarkScaffold({required this.child, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Stack(
        children: [
          Positioned.fill(child: Opacity(opacity: 0.07, child: Center(child: Text('أبو بحري', style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.teal))))),
          child,
        ],
      ),
    );
  }
}
