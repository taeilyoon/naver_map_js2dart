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

@JS('naver.maps.Polygon')
class Polygon extends OverlayView {
  external Polygon(PolygonOptions options);
  external num getAreaSize();
  external Bounds getBounds();
  external bool getClickable();
  external Bounds getDrawingRect();
  external NMap getMap();
  external void InheritedFrom();
  external Object /*PolygonOptions|dynamic*/ getOptions(String key);
  external Object /*ArrayOfCoords|KVOArrayOfCoords*/ getPath();
  external Object /*Array<ArrayOfCoords>|KVOArray<KVOArrayOfCoords>*/ getPaths();
  external Object /*PolygonOptions|dynamic*/ getStyles(String key);
  external bool getVisible();
  external num getZIndex();
  external void setClickable(bool clickable);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(PolygonOptions options);
  external void setPath(
      Object /*ArrayOfCoords|KVOArrayOfCoords|ArrayOfCoordsLiteral*/ path);
  external void setPaths(
      Object /*List<ArrayOfCoords>|KVOArray<KVOArrayOfCoords>|List<ArrayOfCoordsLiteral>*/ paths);
  external void setStyles(PolygonOptions options);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
