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

@JS('naver.maps.Point')
class Point {
  external Point(num x, num y);
  external Point add(num x, num y);
  external Point ceil();
  external Point clone();
  external Point div(num x, num y);
  external bool equals(Object /*Coord|PointLiteral*/ point);
  external Point floor();
  external Point mul(num x, num y);
  external Point round();
  external Point sub(num x, num y);
  external String toString();
}
