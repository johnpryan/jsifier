// Copyright (c) 2016, John Ryan. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:js';
import 'dart:convert';

class Jsifier {
  static dynamic decode(obj) {
    var str = context['JSON'].callMethod('stringify', [obj]);
    var result = JSON.decode(str);
    if (_isWrapped(result)) {
      result = result[result.keys.first];
    }
    return result;
  }

  static bool _isWrapped(obj) =>
      obj is Map && obj.keys.length == 1 && obj.keys.first == "o";
}
