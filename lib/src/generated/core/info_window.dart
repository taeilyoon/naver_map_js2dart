part of '../naver_map_core.dart';

@JS('naver.maps.InfoWindow')
class InfoWindow extends OverlayView {
  external InfoWindow(InfoWindowOptions options);
  external void close();
  external HtmlElement getContent();
  external InfoWindowOptions getOptions(String key);
  external Coord getPosition();
  external num getZIndex();
  external void open(NMap map, Marker anchor);
  external void setContent(Object /*String|HtmlElement*/ content);
  external void setOptions(InfoWindowOptions options);
  external void setPosition(Object /*Coord|CoordLiteral*/ position);
  external void setZIndex(num zIndex);
}
