part of '../naver_map_core.dart';

@JS('Layer')
class Layer extends KVO {
  // external Layer(
  //     String name, MapTypeRegistry MapTypeRegistry, LayerOptions options);
  external MapType getLayerType();
  external String getLayerTypeId();
  external Object /*NMap|null*/ getMap();
  external num getOpacity();
  external HtmlElement getPaneElement();
  external void refresh(bool noEffect);
  external void setLayerTypeId(String typeId);
  external void setMap(Object /*NMap|null*/ map);
  external void setOpacity(num opacity);
}
