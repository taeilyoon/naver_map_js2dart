import 'dart:html';

import 'package:js/js.dart';
import 'package:naver_map_js2dart/src/generated/naver_map_core.dart';

void main() {
  var map = NMap(querySelector('#canvas'),
      MapOptions()..center = LatLng(37.3674001, 127.1181196));
  // map.addListener("mousemove", allowInterop((e) {
  //   var marker = Marker(MarkerOptions()
  //     ..map = map
  //     ..position = e.coord);
  // }));
  var marker = Marker(MarkerOptions()
    ..map = map
    ..clickable = true
    ..position = LatLng(35.1379222, 129.05562775));

  marker.addListener("click", allowInterop((e) {
    marker.setMap(null);
  }));
  marker.addListener("mouseover", allowInterop((e) {
    print("mouseover");
  }));
  var polygon = Polyline(PolylineOptions()
    ..map = map
    ..path = [
      LatLng(37.37544345085402, 127.11224555969238),
      LatLng(37.37230584065902, 127.10791110992432),
      LatLng(37.35975408751081, 127.10795402526855),
      LatLng(37.359924641705476, 127.11576461791992),
      LatLng(37.35931064479073, 127.12211608886719),
      LatLng(37.36043630196386, 127.12293148040771),
      LatLng(37.36354029942161, 127.12310314178465),
      LatLng(37.365211629488016, 127.12456226348876),
      LatLng(37.37544345085402, 127.11224555969238)
    ]
    // ..fillColor = '#ff0000'
    ..clickable = true
    // ..fillOpacity = 0.3
    ..strokeOpacity = 1
    ..strokeColor = '#ff000000');

  polygon.addListener("mouseover", allowInterop((e) {
    print("mouseover");
  }));
  polygon.addListener("click", allowInterop((e) {
    print("mouseover");
  }));
}
