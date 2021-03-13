part of '../naver_map_core.dart';

@JS('naver.maps.NaverStyleMapTypeOption')
class NaverStyleMapTypeOption {
  external NaverStyleMapTypeOption(NaverStyleMapTypeOptions options);
  external ImageMapType getBicycleLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getBlankMap(NaverStyleMapTypeOption opts);
  external ImageMapType getCadastralLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getHybridMap(NaverStyleMapTypeOption opts);
  external MapTypeRegistry getMapTypes(NaverStyleMapTypeOption opts);
  external ImageMapType getNormalLabelLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getNormalMap(NaverStyleMapTypeOption opts);
  external ImageMapType getSatelliteLabelLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getSatelliteMap(NaverStyleMapTypeOption opts);
  external ImageMapType getStreetLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getTerrainMap(NaverStyleMapTypeOption opts);
  external ImageMapType getTrafficLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getTrafficMiniMap(NaverStyleMapTypeOption opts);
  external ImageMapType getVectorMap(NaverStyleMapTypeOption opts);
  external ImageMapType getWorldMap(NaverStyleMapTypeOption opts);
}
