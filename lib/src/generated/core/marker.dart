part of '../naver_map_core.dart';

@JS('Marker')
class Marker extends OverlayView {
  external Marker(MarkerOptions options);
  external void draw();
  external void InheritedFrom();
  external void Overrides();
  external Animation getAnimation();
  external bool getClickable();
  external Point getContainerTopLeft();
  external String getCursor();
  external bool getDraggable();
  external Bounds getDrawingRect();
  external Object /*ImageIcon|SymbolIcon|HtmlIcon*/ getIcon();
  external NMap getMap();
  external MarkerOptions getOptions(String key);
  external MapPanes getPanes();
  external Coord getPosition();
  // external MapSystemProjection getProjection();
  external MarkerShape getShape();
  external String getTitle();
  external bool getVisible();
  external num getZIndex();
  external void onAdd();
  external void onRemove();
  external void setAnimation(Animation animation);
  external void setClickable(bool clickable);
  external void setCursor(String cursor);
  external void setDraggable(bool draggable);
  external void setIcon(Object /*String|ImageIcon|SymbolIcon|HtmlIcon*/ icon);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(MarkerOptions options);
  external void setPosition(Object /*Coord|CoordLiteral*/ position);
  external void setShape(MarkerShape shape);
  external void setTitle(String title);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
