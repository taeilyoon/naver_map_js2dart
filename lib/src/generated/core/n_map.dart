part of '../naver_map_core.dart';

@JS('Map')
class NMap extends KVO {
  external NMap(Object /*String|HtmlElement*/ mapDiv, Object mapOptions);
  external void addPane(
      String name, Object /*HtmlElement|num*/ elementOrZIndex);
  external void destroy();
  external void fitBounds(
      Object /*Bounds|BoundsLiteral|ArrayOfCoords|ArrayOfCoordsLiteral*/ bounds,
      Margin margin);
  external Bounds getBounds();
  external Coord getCenter();
  external Coord getCenterPoint();
  external HtmlElement getElement();
  external String getMapTypeId();
  external dynamic getOptions(String key);
  external MapPanes getPanes();
  // external Projection getPrimitiveProjection();
  // external MapSystemProjection getProjection();
  external Size getSize();
  external num getZoom();
  // external void morph(Object /*Coord|CoordLiteral*/ coord, num zoom,
  //     TransitionOptions transitionOptions);
  external void panBy(Object /*Point|PointLiteral*/ offset);
  external void panTo(
      Object /*Coord|CoordLiteral*/ coord, TransitionOptions transitionOptions);
  external void panToBounds(Object /*Bounds|BoundsLiteral*/ bounds,
      TransitionOptions transitionOptions, Margin margin);
  external void refresh(bool noEffect);
  external void removePane(String name);
  external void setCenter(Object /*Coord|CoordLiteral*/ center);
  external void setCenterPoint(Object /*Point|PointLiteral*/ point);
  external void setMapTypeId(String mapTypeId);
  external void setOptions(
      Object /*Object|String*/ newOptionsOrKey, dynamic value);
  external void setSize(Object /*Size|SizeLiteral*/ size);
  external void setZoom(num zoom, bool effect);
  external void updateBy(Object /*Coord|CoordLiteral*/ coord, num zoom);
  external void zoomBy(
      num deltaZoom, Object /*Coord|CoordLiteral*/ zoomOrigin, bool effect);
}
