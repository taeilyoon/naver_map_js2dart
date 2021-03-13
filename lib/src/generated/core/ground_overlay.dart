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

@JS('naver.maps.GroundOverlay')
class GroundOverlay extends OverlayView {
  external GroundOverlay(String url, Object /*Bounds|BoundsLiteral*/ bounds,
      GroundOverlayOptions options);
  external Bounds getBounds();
  external NMap getMap();
  external void InheritedFrom();
  external num getOpacity();
  external String getUrl();
  external void setMap(Object /*NMap|null*/ map);
  external void setOpacity(num opacity);
}
