import 'package:flutter/material.dart';
import 'package:flutter_tdd/test_ui_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TDD Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter TDD Feature List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text('普通测试'),
          ),
          const ListTile(
            title: Text('provider测试'),
          ),
          const ListTile(
            title: Text('mockito测试'),
          ),
          ListTile(
            title: const Text('UI测试'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TextUIPage();
              }));
            },
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
