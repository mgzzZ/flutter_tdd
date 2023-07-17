import 'package:flutter_tdd/custom_test.dart';
import 'package:flutter_tdd/provider_test.dart';
import 'package:test/test.dart';

void main() {
  test('provider测试01', () {
    final counter = Counter();
    final control = CounterControl(counter);
    expect(control.value, 0);
    control.add();
    expect(control.value, 1);
    expect(counter.value, 1);
  });
}
