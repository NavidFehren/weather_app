import 'dart:convert';

import 'package:flutter/services.dart';

class CityService {
  Future<List<dynamic>> getCities() async {
    final json = await rootBundle.loadString('assets/data/cities.json');

    return jsonDecode(json);
  }
}
