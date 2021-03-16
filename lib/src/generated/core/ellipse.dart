part of '../naver_map_core.dart';

@JS('Ellipse')
class Ellipse extends OverlayView {
  external Ellipse();
  external num getAreaSize();
  external Bounds getBounds();
  external bool getClickable();
  external Bounds getDrawingRect();
  external NMap getMap();
  external void InheritedFrom();
  external Object /*EllipseOptions|dynamic*/ getOptions(String key);
  external Object /*EllipseOptions|dynamic*/ getStyles(String key);
  external bool getVisible();
  external num getZIndex();
  external void setBounds(Object /*Bounds|BoundsLiteral*/ bounds);
  @override
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(EllipseOptions options);
  external void setStyles(EllipseOptions options);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
