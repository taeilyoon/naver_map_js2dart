part of '../naver_map_core.dart';

@JS('naver.maps.Circle')
class Circle extends OverlayView {
  external Circle(CircleOptions options);
  external num getAreaSize();
  external Bounds getBounds();
  external Coord getCenter();
  external bool getClickable();
  external Bounds getDrawingRect();
  external NMap getMap();
  external void InheritedFrom();
  external Object /*CircleOptions|dynamic*/ getOptions(String key);
  external num getRadius();
  external Object /*CircleOptions|dynamic*/ getStyles(String key);
  external bool getVisible();
  external num getZIndex();
  external void setCenter(Object /*Coord|CoordLiteral*/ center);
  external void setClickable(bool clickable);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(CircleOptions options);
  external void setRadius(num radius);
  external void setStyles(CircleOptions options);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
