// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
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
