import 'package:flutter_tdd/custom_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'mockito_test.mocks.dart';

@GenerateMocks([Counter])
void main() {
  test('mockito 测试1', () {
    final counter = MockCounter();
    when(counter.value).thenReturn(0);
    when(counter.add()).thenAnswer((realInvocation) {
      when(counter.value).thenReturn(1);
    });
  });
}
