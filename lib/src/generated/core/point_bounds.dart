part of '../naver_map_core.dart';

@JS('naver.maps.PointBounds')
class PointBounds {
  external PointBounds(Point minPoint, Point maxPoint);
  external PointBounds bounds(Object /*Coord|PointLiteral*/ point,
      Object /*Coord|PointLiteral*/ pointN);
  external PointBounds clone();
  external bool equals(Object /*Bounds|PointBoundsLiteral*/ bounds);
  external PointBounds extend(Object /*Coord|PointLiteral*/ point);
  external Point getCenter();
  external Point getMax();
  external Point getMin();
  external bool hasBounds(Object /*Bounds|PointBoundsLiteral*/ bounds);
  external bool hasPoint(Object /*Coord|PointLiteral*/ point);
  external bool intersects(Object /*Bounds|PointBoundsLiteral*/ bounds);
  external num maxX();
  external num maxY();
  external num minX();
  external num minY();
  external String toString();
  external PointBounds union(Object /*Bounds|PointBoundsLiteral*/ bounds);
}
