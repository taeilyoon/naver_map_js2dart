part of '../naver_map_core.dart';

@JS('naver.maps.KVO')
class KVO {
  external KVO();
  external MapEventListener addListener(String eventName, Function listener);
  external MapEventListener addListenerOnce(
      String eventName, Function listener);
  external void bindTo(String key, KVO target, String targetKey);
  external void clearListeners(String eventName);
  external dynamic get(String key);
  external bool hasListener(String eventName);
  external void removeListener(List<MapEventListener> listeners);
  external void set(String key, dynamic value, bool silently);
  external void setValues(Object properties);
  external void trigger(String eventName, dynamic eventObject);
  external void unbind(String key);
  external void unbindAll();
}
