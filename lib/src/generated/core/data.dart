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

@JS('naver.maps.Data')
class Data extends KVO {
  external Data();
  external void addFeature(Feature feature, bool autoStyle);
  external void addGeoJson(Object geojson, bool autoStyle);
  external void addGpx(Object xmlDoc, bool autoStyle);
  external void addKml(Object xmlDoc, bool autoStyle);
  external void forEach(Function callback);
  external List<Feature> getAllFeature();
  external Feature getFeatureById(Object /*String|num*/ id);
  external Object /*NMap|null*/ getMap();
  external Object /*StyleOptions|StylingFunction*/ getStyle();
  external void overrideStyle(Feature feature, StyleOptions style);
  external void removeFeature(Feature feature);
  external void removeGeoJson(Object geojson);
  external void revertStyle(Feature feature);
  external void setMap(Object /*NMap|null*/ map);
  external void setStyle(Object /*StyleOptions|StylingFunction*/ style);
  external Object toGeoJson();
}
