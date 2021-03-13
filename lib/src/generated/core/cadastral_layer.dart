part of '../naver_map_core.dart';

@JS('CadastralLayer')
class CadastralLayer {
  external CadastralLayer(CadastralLayerOptions option);
  external MapType getLayerType();
  external String getLayerTypeId();
  external NMap getMap();
  external num getOpacity();
  external HtmlElement getPaneElement();
  external void refresh(bool noEffect);
  external void setLayerTypeId(String typeId);
  external void setMap(Object /*NMap|null*/ map);
  external void setOpacity(num opacity);
}
