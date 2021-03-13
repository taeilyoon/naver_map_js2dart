part of '../naver_map_core.dart';

@JS('LatLng')
class LatLng {
  external LatLng(
    num lat,
    num lng, [
    bool noWrap, // ignore: unused_element
  ]);
  @override
  external LatLng clone();
  external void Overrides();
  external LatLng destinationPoint(num angle, num meter);
  // external bool equals(Coord point);
  external num lat();
  external num lng();
  external Point toPoint();
  @override
  external String toString();
}
