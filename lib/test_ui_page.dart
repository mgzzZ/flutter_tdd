import 'package:flutter/material.dart';

class TextUIPage extends StatefulWidget {
  const TextUIPage({Key? key}) : super(key: key);

  @override
  State<TextUIPage> createState() => _TextUIPageState();
}

class _TextUIPageState extends State<TextUIPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('WELCOME TO UI TEXT PAGE'),
      ),
    );
  }
}
