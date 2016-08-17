// Copyright (c) 2016, John Ryan. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@JS()
library jsifier_base;

import 'package:js/js.dart';
import 'dart:convert';

@JS("JSON.stringify")
external String stringify(obj);

class Jsifier {
  static dynamic decode(obj) => JSON.decode(stringify(obj));
}
