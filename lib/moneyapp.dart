import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

// สร้าง Widget
class MyApp extends StatelessWidget {
  //แสดงผลข้อมูลที่คงที่
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MSOBook",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.brown),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    print('Start Programme');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("รายรับ", 12084.14, Colors.greenAccent, 150),
              SizedBox(height: 5),
              MoneyBox("รายจ่าย", 5060.45, Colors.redAccent, 150),
              SizedBox(height: 5),
              MoneyBox("คงเหลือ", 8320.53, Colors.blueAccent, 150),
              SizedBox(height: 5),
              MoneyBox("ค้างชำระ", 1432.23, Colors.orangeAccent, 150),
            ],
          ),
        ));
  }
}
