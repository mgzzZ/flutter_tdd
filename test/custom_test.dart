import 'package:flutter_tdd/custom_test.dart';
import 'package:test/test.dart';

void main() {
  test('普通测试01', () {
    final counter = Counter();
    expect(counter.value, 0);
    counter.add();
    expect(counter.value, 1);
  });
}
