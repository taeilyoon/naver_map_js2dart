part of '../naver_map_core.dart';

@JS('naver.maps.StreetLayer')
class StreetLayer {
  external StreetLayer(StreetLayerOptions option);
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
