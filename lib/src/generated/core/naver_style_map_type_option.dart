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

@JS('naver.maps.NaverStyleMapTypeOption')
class NaverStyleMapTypeOption {
  external NaverStyleMapTypeOption(NaverStyleMapTypeOptions options);
  external ImageMapType getBicycleLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getBlankMap(NaverStyleMapTypeOption opts);
  external ImageMapType getCadastralLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getHybridMap(NaverStyleMapTypeOption opts);
  external MapTypeRegistry getMapTypes(NaverStyleMapTypeOption opts);
  external ImageMapType getNormalLabelLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getNormalMap(NaverStyleMapTypeOption opts);
  external ImageMapType getSatelliteLabelLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getSatelliteMap(NaverStyleMapTypeOption opts);
  external ImageMapType getStreetLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getTerrainMap(NaverStyleMapTypeOption opts);
  external ImageMapType getTrafficLayer(NaverStyleMapTypeOption opts);
  external ImageMapType getTrafficMiniMap(NaverStyleMapTypeOption opts);
  external ImageMapType getVectorMap(NaverStyleMapTypeOption opts);
  external ImageMapType getWorldMap(NaverStyleMapTypeOption opts);
}
