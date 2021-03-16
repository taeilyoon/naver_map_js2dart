part of '../naver_map_core.dart';

@JS('TrafficLayer')
class TrafficLayer {
  external TrafficLayer(TrafficLayerOptions option);
  external void endAutoRefresh();
  external MapType getLayerType();
  external String getLayerTypeId();
  external NMap /*NMap|null*/ getMap();
  external num getOpacity();
  external HtmlElement getPaneElement();
  external void refresh(bool noEffect);
  external void setLayerTypeId(String typeId);
  external void setMap(Object /*NMap|null*/ map);
  external void setOpacity(num opacity);
  external void startAutoRefresh();
}
