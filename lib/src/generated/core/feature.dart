part of '../naver_map_core.dart';

@JS('naver.maps.Feature')
class Feature extends KVO {
  external Feature(Object rawFeature);
  // external void forEachOverlay(forEachOverlayCallback callback);
  external Bounds getBounds();
  external List<Geometry> getGeometries();
  external String getId();
  external Object /*Array<navermapsMarker>|Array<navermapsPolyline>|Array<navermapsPolygon>*/ getOverlays();
  external dynamic getProperty(String name);
  external Object getRaw();
  external void setProperty(String name, dynamic value);
  external void setStyle(StyleOptions styleOptions);
}
