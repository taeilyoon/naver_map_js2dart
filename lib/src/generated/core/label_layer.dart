part of '../naver_map_core.dart';

@JS('naver.maps.LabelLayer')
class LabelLayer extends Layer {
  external LabelLayer(String name, ImageMapType registry, Object option);
  external MapType getLayerType();
  external void InheritedFrom();
  external String getLayerTypeId();
  external NMap /*NMap|null*/ getMap();
  external num getOpacity();
  external HtmlElement getPaneElement();
  external void refresh(bool noEffect);
  external void setLayerTypeId(String typeId);
  external void setMap(Object /*NMap|null*/ map);
  external void setOpacity(num opacity);
}
