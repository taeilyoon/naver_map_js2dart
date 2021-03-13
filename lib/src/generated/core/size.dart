part of '../naver_map_core.dart';

@JS('naver.maps.Size')
class Size {
  external Size(num width, num height);
  external Size add(Object /*Size|SizeLiteral*/ size);
  external Size ceil();
  external Size clone();
  external Size div(Object /*Size|SizeLiteral*/ size);
  external bool equals(Object /*Size|SizeLiteral*/ size);
  external Size floor();
  external Size mul(num width, num height);
  external Size round();
  external Size sub(Object /*Size|SizeLiteral*/ size);
  external String toString();
}
