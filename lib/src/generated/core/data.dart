part of '../naver_map_core.dart';

@JS('naver.maps.Data')
class Data extends KVO {
  external Data();
  external void addFeature(Feature feature, bool autoStyle);
  external void addGeoJson(Object geojson, bool autoStyle);
  external void addGpx(Object xmlDoc, bool autoStyle);
  external void addKml(Object xmlDoc, bool autoStyle);
  external void forEach(Function callback);
  external List<Feature> getAllFeature();
  external Feature getFeatureById(Object /*String|num*/ id);
  external Object /*NMap|null*/ getMap();
  external Object /*StyleOptions|StylingFunction*/ getStyle();
  external void overrideStyle(Feature feature, StyleOptions style);
  external void removeFeature(Feature feature);
  external void removeGeoJson(Object geojson);
  external void revertStyle(Feature feature);
  external void setMap(Object /*NMap|null*/ map);
  external void setStyle(Object /*StyleOptions|StylingFunction*/ style);
  external Object toGeoJson();
}
