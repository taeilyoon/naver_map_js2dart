part of '../naver_map_core.dart';

@JS('Geometry')
class Geometry extends KVO {
  external Geometry(Object rawGeometry);
  external List<Coord> getCoords();
  external String getType();
}
