define(['dart_sdk'], (function load__example__example(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const html = dart_sdk.html;
  const js = dart_sdk.js;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  var example = Object.create(dart.library);
  var FunctionL = () => (FunctionL = dart.constFn(dart.legacy(core.Function)))();
  var dynamicToNullN = () => (dynamicToNullN = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();
  const CT = Object.create(null);
  example.main = function main() {
    let t0, t0$;
    let map = new dart.global.naver.maps.Map(html.querySelector("#canvas"), (t0 = {}, (() => {
      t0.center = new dart.global.naver.maps.LatLng(35.1379222, 129.05562775);
      return t0;
    })()));
    map.addListener("mousemove", js.allowInterop(FunctionL(), dart.fn(e => {
      let t0;
      let marker = new dart.global.naver.maps.Marker((t0 = {}, (() => {
        t0.map = map;
        t0.position = dart.lazyJSType(() => dart.global.naver.maps.LatLng, "naver.maps.LatLng").as(dart.dload(e, 'coord'));
        return t0;
      })()));
    }, dynamicToNullN())));
    let marker = new dart.global.naver.maps.Marker((t0$ = {}, (() => {
      t0$.map = map;
      t0$.position = new dart.global.naver.maps.LatLng(35.1379222, 129.05562775);
      return t0$;
    })()));
    core.print("sss");
  };
  dart.trackLibraries("example/example", {
    "org-dartlang-app:///example/example.dart": example
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["example.dart"],"names":[],"mappings":";;;;;;;;;;;;;AAMM,cAAM,+BAAK,mBAAc,sBACzB;AAAc,kBAAS,kCAAO,YAAY;;;AAK3C,IAJH,AAAI,GAAD,aAAa,aAAa,6BAAa,QAAC;;AACrC,mBAAS,mCAAO,KAFlB,IAEkB;AAChB,iBAAM,GAAG;AACT,mGAAa,WAAF,CAAC;;;;AAEd,iBAAS,mCAAO,MANhB,IAMgB;AAChB,gBAAM,GAAG;AACT,qBAAW,kCAAO,YAAY;;;AACtB,IAAZ,WAAM;EACR","file":"example.unsound.ddc.js"}');
  // Exports:
  return {
    example__example: example
  };
}));

//# sourceMappingURL=example.unsound.ddc.js.map
