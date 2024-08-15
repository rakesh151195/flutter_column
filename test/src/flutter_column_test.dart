import 'package:flutter_column/src/flutter_column.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlutterColumn', () {
    test('can be instantiated', () {
      expect(const FlutterColumn(children: []), isA<FlutterColumn>());
    });
  });
}
