part of '../naver_map_core.dart';

@JS('NaverMapTypeOption')
class NaverMapTypeOption {
  external NaverMapTypeOption(NaverImageMapTypeOptions options);
  external ImageMapType getBicycleLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getBlankMap(NaverImageMapTypeOptions opts);
  external ImageMapType getCadastralLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getHybridMap(NaverImageMapTypeOptions opts);
  external MapTypeRegistry getMapTypes(NaverImageMapTypeOptions opts);
  external ImageMapType getNormalLabelLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getNormalMap(NaverImageMapTypeOptions opts);
  external ImageMapType getSatelliteLabelLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getSatelliteMap(NaverImageMapTypeOptions opts);
  external ImageMapType getStreetLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getTerrainMap(NaverImageMapTypeOptions opts);
  external ImageMapType getTrafficLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getVectorMap(NaverImageMapTypeOptions opts);
  external ImageMapType getWorldMap(NaverImageMapTypeOptions opts);
}
