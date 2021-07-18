import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
      home: SplashScreen(),
      theme: ThemeData(
          primarySwatch: Colors.red, accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
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
    getExchangeRate();
  }

  Future<void> getExchangeRate() async {
    var url = 'https://dog.ceo/api/breeds/image/random';
    var response = await http.get(Uri.parse(url));
    print('ดึงข้อมูลสกุลเงิน :');
    print(response.body);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Money Exchange"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [],
          ),
        ));
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [],
      ),
    )();
  }
}
