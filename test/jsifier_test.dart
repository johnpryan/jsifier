// Copyright (c) 2016, John Ryan. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@TestOn('browser')

@JS()
library jsifier_test;

import 'package:js/js.dart';
import 'package:test/test.dart';
import 'package:jsifier/jsifier.dart';

external Groceries get groceries;

@JS()
class Groceries {
  external dynamic get dairy;
  external dynamic get vegetables;
}

void main() {
  group('Jsifier', () {
    test('can convert a JsObject', () {
      var dartObj = Jsifier.decode(groceries.dairy);
      expect(dartObj.keys.length, equals(2));
    });

    test('exposes stringify()', () {
      expect(stringify(groceries.dairy), hasLength(greaterThan(0)));
    });
  });
}
