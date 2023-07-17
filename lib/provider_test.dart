import 'package:flutter/widgets.dart';
import 'package:flutter_tdd/custom_test.dart';

class CounterControl extends ChangeNotifier {
  final Counter counter;
  CounterControl(this.counter);

  int get value => counter.value;

  void add() {
    counter.add();
    notifyListeners();
  }
}
