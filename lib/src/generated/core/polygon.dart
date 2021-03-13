part of '../naver_map_core.dart';

@JS('naver.maps.Polygon')
class Polygon extends OverlayView {
  external Polygon(PolygonOptions options);
  external num getAreaSize();
  external Bounds getBounds();
  external bool getClickable();
  external Bounds getDrawingRect();
  external NMap getMap();
  external void InheritedFrom();
  external Object /*PolygonOptions|dynamic*/ getOptions(String key);
  external Object /*ArrayOfCoords|KVOArrayOfCoords*/ getPath();
  external Object /*Array<ArrayOfCoords>|KVOArray<KVOArrayOfCoords>*/ getPaths();
  external Object /*PolygonOptions|dynamic*/ getStyles(String key);
  external bool getVisible();
  external num getZIndex();
  external void setClickable(bool clickable);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(PolygonOptions options);
  external void setPath(
      Object /*ArrayOfCoords|KVOArrayOfCoords|ArrayOfCoordsLiteral*/ path);
  external void setPaths(
      Object /*List<ArrayOfCoords>|KVOArray<KVOArrayOfCoords>|List<ArrayOfCoordsLiteral>*/ paths);
  external void setStyles(PolygonOptions options);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
