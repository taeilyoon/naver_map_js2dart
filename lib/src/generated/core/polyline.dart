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
part of '../naver_map_core.dart';

@JS('naver.maps.Polyline')
class Polyline extends OverlayView<PolylineOptions> {
  external Polyline(PolylineOptions options);
  external Bounds getBounds();
  external bool getClickable();
  external num getDistance();
  external Bounds getDrawingRect();
  external NMap getMap();
  external void InheritedFrom();
  external Object /*PolylineOptions|dynamic*/ getOptions(String key);
  external Object /*ArrayOfCoords|KVOArrayOfCoords*/ getPath();
  external Object /*PolylineOptions|dynamic*/ getStyles(String key);
  external bool getVisible();
  external num getZIndex();
  external void setClickable(bool clickable);
  external void setMap(Object /*NMap|null*/ map);
  external void setOptions(PolylineOptions options);
  external void setPath(
      Object /*ArrayOfCoords|KVOArrayOfCoords|ArrayOfCoordsLiteral*/ path);
  external void setStyles(PolylineOptions options);
  external void setVisible(bool visible);
  external void setZIndex(num zIndex);
}
