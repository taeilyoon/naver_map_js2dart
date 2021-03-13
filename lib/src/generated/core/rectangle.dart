part of '../naver_map_core.dart';

@JS('naver.maps.Rectangle')
class Rectangle extends OverlayView {
  external Rectangle(RectangleOptions options);
  external num getAreaSize();
  external Bounds getBounds();
  external bool getClickable();
  external Bounds getDrawingRect();
  external NMap getMap();
  external void InheritedFrom();
  external Object /*RectangleOptions|dynamic*/ getOptions(String key);
  external Object /*RectangleOptions|dynamic*/ getStyles(String key);
  external bool getVisible();
  external num getZIndex();
  external void setBounds(Object /*Bounds|BoundsLiteral*/ bounds);
  external void setClickable(bool clickable);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(RectangleOptions options);
  external void setStyles(RectangleOptions options);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
