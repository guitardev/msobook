import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu('กุ้งเผา', '500', 'assets/images/pic1.jpeg'),
    FoodMenu('กระเพรา', '80', 'assets/images/pic2.jpeg'),
    FoodMenu('สัมตำ', '60', 'assets/images/pic3.jpeg'),
    FoodMenu('ผัดไทย', '40', 'assets/images/pic4.jpeg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เมนูอาหาร"),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            FoodMenu food = menu[index];
            return ListTile(
                leading: Image.asset(food.img),
                title: Text(food.name, style: TextStyle(fontSize: 25)),
                subtitle: Text("ราคา " + food.price + " บาท",
                    style: TextStyle(fontSize: 18)),
                onTap: () {
                  print('คุณเลือก ' + food.name);
                });
          }),
    );
  }
}
