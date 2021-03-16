part of '../naver_map_core.dart';

@JS('LatLngBounds')
class LatLngBounds {
  external LatLngBounds(LatLng sw, LatLng ne);
  // external LatLngBounds<static> bounds(Coord latlng, Coord latlngN);
  external LatLngBounds clone();
  external num east();
  // external bool equals(Bounds bounds);
  // external LatLngBounds extend(Coord latlng);
  external LatLng getCenter();
  external Point getMax();
  external Point getMin();
  external LatLng getNE();
  external LatLng getSW();
  external bool hasBounds(Object /*Bounds|PointBoundsLiteral*/ bounds);
  external void InheritedFrom();
  external bool hasLatLng(Coord latlng);
  // external bool intersects(Bounds bounds);
  external void Overrides();
  external num maxX();
  external num maxY();
  external num minX();
  external num minY();
  external num north();
  external num south();
  external PointBounds toPointBounds();
  external String toString();
  // external LatLngBounds union(Bounds bounds);
  external num west();
}
