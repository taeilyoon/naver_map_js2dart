part of '../naver_map_core.dart';

@JS('CustomControl')
class CustomControl extends KVO {
  external CustomControl(String html, ControlOptions ControlOptions);
  external HtmlElement getElement();
  external Object /*NMap|null*/ getMap();
  external dynamic getOptions(String key);
  external String html(String html);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(ControlOptions newOptions);
  external void setPosition(Position position);
}
