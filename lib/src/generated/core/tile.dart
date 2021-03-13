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
