part of '../naver_map_core.dart';

@JS('CanvasTile')
class CanvasTile extends Tile<CanvasTileOptions, CanvasMapType> {
  external CanvasTile(CanvasTileOptions canvasTileOptions);
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
  @override
  external void load(CanvasTileOptions canvasTileOptions);
  external void remove();
  external void reset(
      CanvasMapType mapType, num zoom, CanvasTileOptions canvasTileOptions);
  external void setBlank();
  external void setOffset(Point offset);
  external void setOpacity(num opacity);
  external void setSize(Size size);
  external void setTileIndex(TileIndex tileIndex);
  external void setZIndex(num zIndex);
  external void show();
}
