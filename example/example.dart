import 'dart:html';

import 'package:js/js.dart';
import 'package:naver_map_js2dart/src/generated/naver_map_core.dart';

void main() {
  var map = NMap(querySelector('#canvas'),
      MapOptions()..center = LatLng(35.1379222, 129.05562775));
  map.addListener("mousemove", allowInterop((e) {
    var marker = Marker(MarkerOptions()
      ..map = map
      ..position = e.coord);
  }));
  var marker = Marker(MarkerOptions()
    ..map = map
    ..position = LatLng(35.1379222, 129.05562775));
  print("sss");
}
