define(['dart_sdk'], (function load__packages__naver_map_js2dart__src__generated__naver_map_core(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  var naver_map_core = Object.create(dart.library);
  var $toString = dartx.toString;
  var PositionL = () => (PositionL = dart.constFn(dart.legacy(naver_map_core.Position)))();
  const CT = Object.create(null);
  var L0 = "package:naver_map_js2dart/src/generated/naver_map_core.dart";
  dart.defineLazy(CT, {
    get C0() {
      return C0 = dart.const({
        __proto__: naver_map_core.Position.prototype,
        [_name$]: "Position.CENTER",
        index: 0
      });
    },
    get C1() {
      return C1 = dart.const({
        __proto__: naver_map_core.Position.prototype,
        [_name$]: "Position.TOP_LEFT",
        index: 1
      });
    },
    get C2() {
      return C2 = dart.constList([C0 || CT.C0, C1 || CT.C1], PositionL());
    }
  }, false);
  var _name$ = dart.privateName(naver_map_core, "_name");
  var C0;
  var C1;
  var C2;
  naver_map_core.Position = class Position extends core.Object {
    toString() {
      return this[_name$];
    }
  };
  (naver_map_core.Position.new = function(index, _name) {
    this.index = index;
    this[_name$] = _name;
    ;
  }).prototype = naver_map_core.Position.prototype;
  dart.addTypeTests(naver_map_core.Position);
  dart.addTypeCaches(naver_map_core.Position);
  dart.setMethodSignature(naver_map_core.Position, () => ({
    __proto__: dart.getMethods(naver_map_core.Position.__proto__),
    toString: dart.fnType(dart.legacy(core.String), []),
    [$toString]: dart.fnType(dart.legacy(core.String), [])
  }));
  dart.setLibraryUri(naver_map_core.Position, L0);
  dart.setFieldSignature(naver_map_core.Position, () => ({
    __proto__: dart.getFields(naver_map_core.Position.__proto__),
    index: dart.finalFieldType(dart.legacy(core.int)),
    [_name$]: dart.finalFieldType(dart.legacy(core.String))
  }));
  dart.defineExtensionMethods(naver_map_core.Position, ['toString']);
  naver_map_core.Position.CENTER = C0 || CT.C0;
  naver_map_core.Position.TOP_LEFT = C1 || CT.C1;
  naver_map_core.Position.values = C2 || CT.C2;
  dart.trackLibraries("packages/naver_map_js2dart/src/generated/naver_map_core", {
    "package:naver_map_js2dart/src/generated/naver_map_core.dart": naver_map_core
  }, {
    "package:naver_map_js2dart/src/generated/naver_map_core.dart": ["../types.dart", "../interface.dart", "../enum.dart", "core/lat_lng.dart", "core/lat_lng_bounds.dart", "core/point.dart", "core/point_bounds.dart", "core/size.dart", "core/KV.dart", "core/n_map.dart", "core/canvas_tile.dart", "core/image_tile.dart", "core/tile.dart", "core/canvas_map_type.dart", "core/image_map_type.dart", "core/map_type_registry.dart", "core/naver_map_type_option.dart", "core/naver_style_map_type_option.dart", "core/custom_control.dart", "core/logo_control.dart", "core/map_data_control.dart", "core/map_type_control.dart", "core/scale_control.dart", "core/zoom_control.dart", "core/layer.dart", "core/bicycle_layer.dart", "core/cadastral_layer.dart", "core/label_layer.dart", "core/street_layer.dart", "core/traffic_layer.dart", "core/data.dart", "core/feature.dart", "core/geometry.dart", "core/overlay_view.dart", "core/circle.dart", "core/ellipse.dart", "core/ground_overlay.dart", "core/info_window.dart", "core/marker.dart", "core/polygon.dart", "core/polyline.dart", "core/rectangle.dart"]
  }, '{"version":3,"sourceRoot":"","sources":["../enum.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;IAKA;;iDAHK;;;;EAGL","file":"naver_map_core.unsound.ddc.js"}');
  // Exports:
  return {
    src__generated__naver_map_core: naver_map_core
  };
}));

//# sourceMappingURL=naver_map_core.unsound.ddc.js.map
