part of '../naver_map_core.dart';

@JS('naver.maps.ImageTile')
class ImageTile extends Tile<ImageTileOptions, ImageMapType> {
  external ImageTile(ImageTileOptions imageTileOptions);
  external void appendTo(HtmlElement parentNode);
  external void cancelFadeIn();
  external void destroy();
  external void Overrides();
  external void fadeIn(Function callback, num startOpacity);
  external void InheritedFrom();
  external HtmlElement getElement();
  external List<HtmlElement> getImageElements();
  external Point getOffset();
  external num getOpacity();
  external Size getSize();
  external TileIndex getTileIndex();
  external List<String> getUrls();
  external num getZIndex();
  external void hide();
  external void load(ImageTileOptions imageTileOptions);
  external void remove();
  external void reset(
      ImageMapType mapType, num zoom, ImageTileOptions imageTileOptions);
  external void setBlank();
  external void setOffset(Point offset);
  external void setOpacity(num opacity);
  external void setSize(Size size);
  external void setTileIndex(TileIndex tileIndex);
  external void setUrls(List<String> urls);
  external void setZIndex(num zIndex);
  external void show();
}
