part of '../naver_map_core.dart';

@JS('ScaleControl')
class ScaleControl {
  external ScaleControl(ScaleControlOptions ScaleControlOptions);
  external HtmlElement getElement();
  external void InheritedFrom();
  external Object /*NMap|null*/ getMap();
  external dynamic getOptions(String key);
  external String html(String html);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(ControlOptions newOptions);
  external void setPosition(Position position);
}
