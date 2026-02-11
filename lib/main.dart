import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lab9/screen/display.dart';
import 'package:lab9/screen/from_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// stl
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: MyHomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
    );
  }
}

// stf
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        body: TabBarView(children: [FromScreen(), DisplayScreen()]),
        bottomNavigationBar: TabBar(
          labelColor: Colors.white,
          tabs: [
            Tab(text: 'บันทึกอุณหภูมิ'),
            Tab(text: 'รายชื่อนักเรียน'),
          ],
        ),
      ),
    );
  }
}
