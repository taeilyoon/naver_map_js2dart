part of '../naver_map_core.dart';

@JS('Polyline')
class Polyline extends OverlayView<PolylineOptions> {
  external Polyline(PolylineOptions options);
  external Bounds getBounds();
  external bool getClickable();
  external num getDistance();
  external Bounds getDrawingRect();
  external NMap getMap();
  external void InheritedFrom();
  external Object /*PolylineOptions|dynamic*/ getOptions(String key);
  external Object /*ArrayOfCoords|KVOArrayOfCoords*/ getPath();
  external Object /*PolylineOptions|dynamic*/ getStyles(String key);
  external bool getVisible();
  external num getZIndex();
  external void setClickable(bool clickable);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(PolylineOptions options);
  external void setPath(
      Object /*ArrayOfCoords|KVOArrayOfCoords|ArrayOfCoordsLiteral*/ path);
  external void setStyles(PolylineOptions options);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
