define(['dart_sdk'], (function load__example__example(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const html = dart_sdk.html;
  const js = dart_sdk.js;
  const _interceptors = dart_sdk._interceptors;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  var example = Object.create(dart.library);
  var FunctionL = () => (FunctionL = dart.constFn(dart.legacy(core.Function)))();
  var dynamicToNullN = () => (dynamicToNullN = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();
  var JSArrayOfLatLngL = () => (JSArrayOfLatLngL = dart.constFn(_interceptors.JSArray$(dart.lazyJSType(() => dart.global.naver.maps.LatLng, "naver.maps.LatLng"))))();
  const CT = Object.create(null);
  example.main = function main() {
    let t0, t0$, t0$0;
    let map = new dart.global.naver.maps.Map(html.querySelector("#canvas"), (t0 = {}, (() => {
      t0.center = new dart.global.naver.maps.LatLng(37.3674001, 127.1181196);
      return t0;
    })()));
    let marker = new dart.global.naver.maps.Marker((t0$ = {}, (() => {
      t0$.map = map;
      t0$.clickable = true;
      t0$.position = new dart.global.naver.maps.LatLng(35.1379222, 129.05562775);
      return t0$;
    })()));
    marker.addListener("click", js.allowInterop(FunctionL(), dart.fn(e => {
      marker.setMap(null);
    }, dynamicToNullN())));
    marker.addListener("mouseover", js.allowInterop(FunctionL(), dart.fn(e => {
      core.print("mouseover");
    }, dynamicToNullN())));
    let polygon = new dart.global.naver.maps.Polyline((t0$0 = {}, (() => {
      t0$0.map = map;
      t0$0.path = JSArrayOfLatLngL().of([new dart.global.naver.maps.LatLng(37.37544345085402, 127.11224555969238), new dart.global.naver.maps.LatLng(37.37230584065902, 127.10791110992432), new dart.global.naver.maps.LatLng(37.35975408751081, 127.10795402526855), new dart.global.naver.maps.LatLng(37.359924641705476, 127.11576461791992), new dart.global.naver.maps.LatLng(37.35931064479073, 127.12211608886719), new dart.global.naver.maps.LatLng(37.36043630196386, 127.12293148040771), new dart.global.naver.maps.LatLng(37.36354029942161, 127.12310314178465), new dart.global.naver.maps.LatLng(37.365211629488016, 127.12456226348876), new dart.global.naver.maps.LatLng(37.37544345085402, 127.11224555969238)]);
      t0$0.clickable = true;
      t0$0.strokeOpacity = 1;
      t0$0.strokeColor = "#ff000000";
      return t0$0;
    })()));
    polygon.addListener("mouseover", js.allowInterop(FunctionL(), dart.fn(e => {
      core.print("mouseover");
    }, dynamicToNullN())));
    polygon.addListener("click", js.allowInterop(FunctionL(), dart.fn(e => {
      core.print("mouseover");
    }, dynamicToNullN())));
  };
  dart.trackLibraries("example/example", {
    "org-dartlang-app:///example/example.dart": example
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["example.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;AAMM,cAAM,+BAAK,mBAAc,sBACzB;AAAc,kBAAS,kCAAO,YAAY;;;AAM1C,iBAAS,mCAAO,MANhB,IAMgB;AAChB,gBAAM,GAAG;AACT,sBAAY;AACZ,qBAAW,kCAAO,YAAY;;;AAI/B,IAFH,AAAO,MAAD,aAAa,SAAS,6BAAa,QAAC;AACrB,MAAnB,AAAO,MAAD,QAAQ;;AAIb,IAFH,AAAO,MAAD,aAAa,aAAa,6BAAa,QAAC;AAC1B,MAAlB,WAAM;;AAEJ,kBAAU,qCAAS,OAjBnB,IAiBmB;AACnB,iBAAM,GAAG;AACT,kBAAO,uBACP,kCAAO,mBAAmB,qBAC1B,kCAAO,mBAAmB,qBAC1B,kCAAO,mBAAmB,qBAC1B,kCAAO,oBAAoB,qBAC3B,kCAAO,mBAAmB,qBAC1B,kCAAO,mBAAmB,qBAC1B,kCAAO,mBAAmB,qBAC1B,kCAAO,oBAAoB,qBAC3B,kCAAO,mBAAmB;AAG1B,uBAAY;AAEZ,2BAAgB;AAChB,yBAAc;;;AAIf,IAFH,AAAQ,OAAD,aAAa,aAAa,6BAAa,QAAC;AAC3B,MAAlB,WAAM;;AAIL,IAFH,AAAQ,OAAD,aAAa,SAAS,6BAAa,QAAC;AACvB,MAAlB,WAAM;;EAEV","file":"example.unsound.ddc.js"}');
  // Exports:
  return {
    example__example: example
  };
}));

//# sourceMappingURL=example.unsound.ddc.js.map
