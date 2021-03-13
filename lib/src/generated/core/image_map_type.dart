part of '../naver_map_core.dart';

@JS('naver.maps.ImageMapType')
class ImageMapType extends MapType {
  external ImageMapType(ImageMapTypeOptions imageMapTypeOptions);
  external ImageMapTypeOptions getMapTypeOptions();
  external num getMaxZoom();
  external num getMinZoom();
  external String getName();
  external ImageTile getTile(num x, num y, num z);
  external void Implements();
  external List<String> getTileUrls(num x, num y, num z);
  external void setMapTypeOptions(ImageMapTypeOptions imageMapTypeOptions);
}
