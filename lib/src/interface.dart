part of 'generated/naver_map_core.dart';

@anonymous
@JS()
abstract class MapType {
  num maxZoom;
  num minZoom;
  num name;
  Size tileSize;

  external Object getTile(num x, num y, num z);
}
