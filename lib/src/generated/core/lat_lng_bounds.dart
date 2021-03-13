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

@JS('naver.maps.LatLngBounds')
class LatLngBounds {
  external LatLngBounds(LatLng sw, LatLng ne);
  // external LatLngBounds<static> bounds(Coord latlng, Coord latlngN);
  external LatLngBounds clone();
  external num east();
  // external bool equals(Bounds bounds);
  // external LatLngBounds extend(Coord latlng);
  external LatLng getCenter();
  external Point getMax();
  external Point getMin();
  external LatLng getNE();
  external LatLng getSW();
  external bool hasBounds(Object /*Bounds|PointBoundsLiteral*/ bounds);
  external void InheritedFrom();
  external bool hasLatLng(Coord latlng);
  // external bool intersects(Bounds bounds);
  external void Overrides();
  external num maxX();
  external num maxY();
  external num minX();
  external num minY();
  external num north();
  external num south();
  external PointBounds toPointBounds();
  external String toString();
  // external LatLngBounds union(Bounds bounds);
  external num west();
}
