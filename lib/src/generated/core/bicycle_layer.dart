part of '../naver_map_core.dart';

@JS('BicycleLayer')
class BicycleLayer {
  external BicycleLayer(BicycleLayerOptions option);
  @override
  external MapType getLayerType();
  @override
  external String getLayerTypeId();
  @override
  external NMap getMap();
  @override
  external num getOpacity();
  @override
  external HtmlElement getPaneElement();
  @override
  external void refresh(bool noEffect);
  @override
  external void setLayerTypeId(String typeId);
  @override
  external void setMap(Object /*NMap|null*/ map);
  @override
  external void setOpacity(num opacity);
}
