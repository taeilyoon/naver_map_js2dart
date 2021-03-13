part of 'generated/naver_map_core.dart';

@JS("Coord")
class Coord {}

@JS("Bounds")
class Bounds {}

@anonymous
@JS()
class BicycleLayerOptions {
  bool overlayMap = true;
  num zIndec = 3;
}

@anonymous
@JS()
class CadastralLayerOptions {
  bool overlayMap = true;
  num zIndex = 1;
}

@anonymous
@JS()
class CanvasMapTypeOptions {
  String name;
  num maxZoom;
  num minZoom;
  // Projection projection;

}

@anonymous
@JS()
class TileOptions {}

@anonymous
@JS()
class CanvasTileOptions extends TileOptions {
  ImageData imageData;
  num opacity = 0;
  bool transition = true;
  Point offset;
  num zIndex = 0;
  Size size;
  HtmlElement pane;
}

@anonymous
@JS()
class TileIndex {
  num xIndex;
  num yIndex;
}

// https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Circle.html#toc27__anchor
@anonymous
@JS()
class CircleOptions {
  // NMap map;
  // Coord center
}

@anonymous
@JS()
class ControlOptions {
  // NMap map;
  // Coord center
}

@anonymous
@JS()
class StyleOptions {}

@anonymous
@JS()
class EllipseOptions {}

@anonymous
@JS()
class GroundOverlayOptions {}

@anonymous
@JS()
class ImageTileOptions extends TileOptions {}

@anonymous
@JS()
class ImageMapTypeOptions extends CanvasMapTypeOptions {}

@anonymous
@JS()
class InfoWindowOptions {}

@anonymous
@JS()
class MapEventListener {
  String eventName;
  Function listener;
  String listenerId;
  Object target;
}

@anonymous
@JS()
class LayerOptions {}

@anonymous
@JS()
class LogoControlOptions {}

@anonymous
@JS()
class MapDataControlOptions {}

@anonymous
@JS()
class MapTypeControlOptions {}

@anonymous
@JS()
class NaverImageMapTypeOptions {}

@anonymous
@JS()
class NaverStyleMapTypeOptions {}

@anonymous
@JS()
class MapPanes {
  HtmlElement overlayLayer;
  HtmlElement overlayImage;
  HtmlElement floatPane;
}

@anonymous
@JS()
class ZoomControlOptions {}

@anonymous
@JS()
class TrafficLayerOptions {}

@anonymous
@JS()
class StreetLayerOptions {}

@anonymous
@JS()
class ScaleControlOptions {}

@anonymous
@JS()
class TransitionOptions {}

@anonymous
@JS()
class RectangleOptions {}

@anonymous
@JS()
class MarkerOptions {
  NMap map;
  LatLng position;
}

@anonymous
@JS()
class MarkerShape {}

@anonymous
@JS()
class Animation {}

@anonymous
@JS()
class Margin {}

@anonymous
@JS()
class PolygonOptions {}

@anonymous
@JS()
class PolylineOptions {}

@anonymous
@JS()
class MapOptions {
  String background;
  String baseTileOpacity;
  Bounds bounds;
  LatLng center;
  bool disableDoubleClickZoom = false;
  bool disableDoubleTapZoom = false;
  bool disableKineticPan = false;
  bool disableTwoFingerTapZoom = false;
  bool draggable = true;
  bool keyboardShortcuts = false;
  bool logoControl = true;
  LogoControlOptions logoControlOptions;
  bool mapDataControl;
  MapDataControlOptions mapDataControlOptions;
  bool mapTypeControl = false;
  MapTypeControlOptions mapTypeControlOptions;
  String mapTypeId;
  MapTypeRegistry mapTypes;
  Bounds maxBounds;
  num maxZoom;
  num minZoom;
  // Padding padding;
  bool pinchZoom;
  // Postion resizeOrigin;
  bool scaleControl;
  ScaleControlOptions scaleControlOptions;
  bool scrollWheel;
  Size size;
  String overlayZoomEffect;
  num tileSpare;
  bool tileTransition;
  num zoom;
  bool zoomControl;
  ZoomControlOptions zoomControlOptions;
  // Coord zoomOrigin
  String blankTileImage;
  external factory MapOptions();
}
