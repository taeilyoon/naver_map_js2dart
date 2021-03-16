part of '../naver_map_core.dart';

@JS('CanvasMapType')
class CanvasMapType extends MapType {
  external CanvasMapType(CanvasMapTypeOptions canvasMapTypeOptions);
  external CanvasMapTypeOptions getMapTypeOptions();
  external num getMaxZoom();
  external num getMinZoom();
  external String getName();
  @override
  external CanvasTile getTile(num x, num y, num z);
  external void Implements();
  external ImageData getTileData(num x, num y, num z);
  external void setMapTypeOptions(CanvasMapTypeOptions canvasMapTypeOptions);
}
