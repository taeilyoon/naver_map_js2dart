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

@JS('naver.maps.Tile')
class Tile<T extends TileOptions, T2 extends MapType> extends KVO {
  // external Tile(HtmlElement element, T tileOptions);
  external void appendTo(HtmlElement parentNode);
  external void cancelFadeIn();
  external void destroy();
  external void fadeIn(Function callback, num startOpacity);
  external HtmlElement getElement();
  external Point getOffset();
  external num getOpacity();
  external Size getSize();
  external TileIndex getTileIndex();
  external num getZIndex();
  external void hide();
  external void load(T tileOptions);
  external void remove();
  external void reset(T2 mapType, num zoom, T tileOptions);
  external void setBlank();
  external void setOffset(Point offset);
  // external void setOffset(num x, num y);
  external void setOpacity(num opacity);
  external void setSize(Size size);
  external void setTileIndex(TileIndex tileIndex);
  external void setZIndex(num zIndex);
  external void show();
}
