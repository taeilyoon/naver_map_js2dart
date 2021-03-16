part of '../naver_map_core.dart';

@JS('OverlayView')
class OverlayView<T> extends KVO {
  external OverlayView();
  external void draw();
  external Point getContainerTopLeft();
  external NMap getMap();
  external MapPanes getPanes();
  // external MapSystemProjection getProjection();
  external void onAdd();
  external void onRemove();
  external void setMap(NMap map);
}
