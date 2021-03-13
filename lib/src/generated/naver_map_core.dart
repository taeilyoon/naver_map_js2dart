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

@JS('naver.maps')
library maps;

import 'dart:html' show Document, Element, HtmlElement, ImageData, Node;
import 'package:js/js.dart';

part '../types.dart';
part '../interface.dart';
part '../enum.dart';

part 'core/lat_lng.dart';
part 'core/lat_lng_bounds.dart';
part 'core/point.dart';
part 'core/point_bounds.dart';
part 'core/size.dart';
part 'core/KV.dart';
// part 'core/kvo_array.dart';
part 'core/n_map.dart';
part 'core/canvas_tile.dart';
part 'core/image_tile.dart';
part 'core/tile.dart';
part 'core/canvas_map_type.dart';
part 'core/image_map_type.dart';
part 'core/map_type_registry.dart';
part 'core/naver_map_type_option.dart';
part 'core/naver_style_map_type_option.dart';
part 'core/custom_control.dart';
part 'core/logo_control.dart';
part 'core/map_data_control.dart';
part 'core/map_type_control.dart';
part 'core/scale_control.dart';
part 'core/zoom_control.dart';
part 'core/layer.dart';
part 'core/bicycle_layer.dart';
part 'core/cadastral_layer.dart';
part 'core/label_layer.dart';
part 'core/street_layer.dart';
part 'core/traffic_layer.dart';
part 'core/data.dart';
part 'core/feature.dart';
part 'core/geometry.dart';
part 'core/overlay_view.dart';
part 'core/circle.dart';
part 'core/ellipse.dart';
part 'core/ground_overlay.dart';
part 'core/info_window.dart';
part 'core/marker.dart';
part 'core/polygon.dart';
part 'core/polyline.dart';
part 'core/rectangle.dart';
