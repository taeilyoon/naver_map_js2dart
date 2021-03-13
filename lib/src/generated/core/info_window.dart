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

@JS('naver.maps.InfoWindow')
class InfoWindow extends OverlayView {
  external InfoWindow(InfoWindowOptions options);
  external void close();
  external HtmlElement getContent();
  external InfoWindowOptions getOptions(String key);
  external Coord getPosition();
  external num getZIndex();
  external void open(NMap map, Marker anchor);
  external void setContent(Object /*String|HtmlElement*/ content);
  external void setOptions(InfoWindowOptions options);
  external void setPosition(Object /*Coord|CoordLiteral*/ position);
  external void setZIndex(num zIndex);
}
