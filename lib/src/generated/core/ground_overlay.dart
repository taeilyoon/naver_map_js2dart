part of '../naver_map_core.dart';

@JS('naver.maps.GroundOverlay')
class GroundOverlay extends OverlayView {
  external GroundOverlay(String url, Object /*Bounds|BoundsLiteral*/ bounds,
      GroundOverlayOptions options);
  external Bounds getBounds();
  external NMap getMap();
  external void InheritedFrom();
  external num getOpacity();
  external String getUrl();
  external void setMap(Object /*NMap|null*/ map);
  external void setOpacity(num opacity);
}
