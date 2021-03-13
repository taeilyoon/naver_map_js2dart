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

@JS('naver.maps.NaverMapTypeOption')
class NaverMapTypeOption {
  external NaverMapTypeOption(NaverImageMapTypeOptions options);
  external ImageMapType getBicycleLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getBlankMap(NaverImageMapTypeOptions opts);
  external ImageMapType getCadastralLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getHybridMap(NaverImageMapTypeOptions opts);
  external MapTypeRegistry getMapTypes(NaverImageMapTypeOptions opts);
  external ImageMapType getNormalLabelLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getNormalMap(NaverImageMapTypeOptions opts);
  external ImageMapType getSatelliteLabelLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getSatelliteMap(NaverImageMapTypeOptions opts);
  external ImageMapType getStreetLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getTerrainMap(NaverImageMapTypeOptions opts);
  external ImageMapType getTrafficLayer(NaverImageMapTypeOptions opts);
  external ImageMapType getVectorMap(NaverImageMapTypeOptions opts);
  external ImageMapType getWorldMap(NaverImageMapTypeOptions opts);
}
