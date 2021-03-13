part of '../naver_map_core.dart';

@JS('naver.maps.Point')
class Point {
  external Point(num x, num y);
  external Point add(num x, num y);
  external Point ceil();
  external Point clone();
  external Point div(num x, num y);
  external bool equals(Object /*Coord|PointLiteral*/ point);
  external Point floor();
  external Point mul(num x, num y);
  external Point round();
  external Point sub(num x, num y);
  external String toString();
}
