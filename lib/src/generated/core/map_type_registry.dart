part of '../naver_map_core.dart';

@JS('MapTypeRegistry')
class MapTypeRegistry extends KVO {
  external MapTypeRegistry(Object mapTypeInfo, String defaultMapTypeId);
  external String getPreviousTypeId();
  external MapType getSelectedType();
  external String getSelectedTypeId();
  external List<String> getTypeIds();
  // external void set(String mapTypeId, MapType mapType);
  external void Overrides();
  external void setSelectedTypeId(String mapTypeId);
}
