// import 'dart:core';
// import 'dart:io';

// import 'package:dart_style/dart_style.dart';
// import 'package:html/dom.dart';
// import 'package:html/parser.dart' show parse;
// import 'package:http/http.dart' as http;
// import 'package:path/path.dart' as path;

// final genFolder = '';
// final rootpage = '';
// var url;

// const licence = '''
// // Copyright (c) 2015, Alexandre Ardhuin
// //
// // Licensed under the Apache License, Version 2.0 (the "License");
// // you may not use this file except in compliance with the License.
// // You may obtain a copy of the License at
// //
// //    http://www.apache.org/licenses/LICENSE-2.0
// //
// // Unless required by applicable law or agreed to in writing, software
// // distributed under the License is distributed on an "AS IS" BASIS,
// // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// // See the License for the specific language governing permissions and
// // limitations under the License.
// ''';
// final customClassName = <String, String>{
//   'Map': 'NMap',
//   'Symbol': 'NSymbol',
//   'Duration': 'NDuration',
//   'DataStylingFunction': 'function(Data.Feature): Data.StyleOptions',
//   'LocationBias':
//       'LatLng|LatLngLiteral|LatLngBounds|LatLngBoundsLiteral|Circle|CircleLiteral|string',
//   'MapMouseEvent|IconMouseEvent': 'IconMouseEvent',
//   'LocationRestriction': 'LatLngBounds|LatLngBoundsLiteral',
//   'Error': 'Object',
// };

// final customLibraryNames = <String, String>{
//   'localContext': 'local_context',
// };

// final ignoredClasses = <String>[
//   'CircleLiteral',
//   'LatLngLiteral',
//   'LatLngBoundsLiteral',
//   'undefined',
// ];
// var links = <String>[
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.LatLng.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.LatLngBounds.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Point.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.PointBounds.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Size.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.KVO.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.KVOArray.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Map.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.CanvasTile.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.ImageTile.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Tile.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.CanvasMapType.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.ImageMapType.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.MapTypeRegistry.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.NaverMapTypeOption.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.NaverStyleMapTypeOption.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.CustomControl.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.LogoControl.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.MapDataControl.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.MapTypeControl.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.ScaleControl.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.ZoomControl.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Layer.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.BicycleLayer.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.CadastralLayer.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.LabelLayer.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.StreetLayer.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.TrafficLayer.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Data.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Feature.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Geometry.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.OverlayView.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Circle.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Ellipse.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.GroundOverlay.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.InfoWindow.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Marker.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Polygon.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Polyline.html",
//   "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Rectangle.html",
//   // "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.drawing.DrawingManager.html",
//   // "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.AroundControl.html",
//   // "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.FlightSpot.html",
//   // "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.Panorama.html",
//   // "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.visualization.DotMap.html",
//   // "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.visualization.HeatMap.html",
//   // "https://navermaps.github.io/maps.js.ncp/docs/naver.maps.visualization.WeightedLocation.html"
// ];
// void patchEntities(List<DocEntity> entities) {
//   for (final entity in entities) {
//     if (entity.library == null && entity.name == 'LatLng') {
//       entity.constructor
//         ..parameters = [
//           DocMethodParameter()
//             ..name = 'lat'
//             ..type = convertType('number'),
//           DocMethodParameter()
//             ..name = 'lng'
//             ..type = convertType('number'),
//         ]
//         ..optionalParameters = [
//           DocMethodParameter()
//             ..name = 'noWrap'
//             ..type = convertType('boolean'),
//         ];
//     } else if (entity.library == 'localContext' &&
//         entity.name == 'PlaceTypePreference') {
//       entity
//         ..kind = Kind.interface
//         ..properties = [
//           DocProperty()
//             ..name = 'type'
//             ..type = convertType('string'),
//           DocProperty()
//             ..name = 'weight'
//             ..type = convertType('number')
//             ..optional = true,
//         ];
//     }
//     for (var method in entity.methods) {
//       if (method.returnType.startsWith('Promise<')) {
//         method.returnType =
//             'Future${method.returnType.substring('Promise'.length)}';
//       }
//     }
//   }
// }

// main() async {
//   final genFolder =
//       '${path.dirname(Platform.script.path)}/../lib/src/generated';

//   final rootUrl = "https://navermaps.github.io/maps.js.ncp/docs/";
//   final content = (await http.get(rootUrl)).body;
//   final docu = parse(content);

//   final entities = (await Future.wait(links.map(http.get)))
//       .map((response) => response.body)
//       .map(parse)
//       .map((e) => parseDocEntity(e.body))
//       .where((e) => !ignoredClasses.contains(e.name))
//       .map((e) => e..convertTypes())
//       .toList();

//   print(entities);

//   patchEntities(entities);

//   final parts = <String, List<String>>{};
//   for (var entity in entities) {
//     final code = generateCodeForEntity(entity, entities);
//     if (code?.trim()?.isEmpty ?? true) {
//       continue;
//     }
//     var library = entity.library ?? 'core';
//     library = customLibraryNames[library] ?? library;
//     final fileName = '$library/${entity.fileName}.dart';
//     final bundleFile = 'naver_map_core.dart';
//     File('$genFolder/$fileName')
//       ..createSync(recursive: true)
//       ..writeAsStringSync(DartFormatter().format('''
// $licence
// part of '../$bundleFile';
// $code
// '''));
//     parts.putIfAbsent(library, () => <String>[]).add(fileName);
//   }

//   for (var entry in parts.entries) {
//     final library = entry.key;
//     final partList = [
//       for (final fileName in entry.value) "part '$fileName';",
//     ].join('\n');
//     final imports = <String, List<String>>{
//       'core': [
//         "import 'dart:async' show StreamController;",
//         "import 'dart:html' show Document, Element, Node;",
//         "import 'package:js/js.dart';"
//       ],
//       'drawing': [
//         "import 'dart:async' show StreamController;",
//         "import 'package:js_wrapping/js_wrapping.dart';",
//         "import 'package:google_maps/google_maps.dart';",
//       ],
//       'geometry': [
//         "import 'package:js_wrapping/js_wrapping.dart';",
//         "import 'package:google_maps/google_maps.dart';",
//       ],
//       'local_context': [
//         "import 'dart:async' show StreamController;",
//         "import 'dart:html' show Element;",
//         "import 'package:js_wrapping/js_wrapping.dart';",
//         "import 'package:google_maps/google_maps.dart';",
//       ],
//       'places': [
//         "import 'dart:async' show StreamController;",
//         "import 'dart:html' show InputElement;",
//         "import 'package:js_wrapping/js_wrapping.dart';",
//         "import 'package:google_maps/google_maps.dart';",
//       ],
//       'visualization': [
//         "import 'package:js_wrapping/js_wrapping.dart';",
//         "import 'package:google_maps/google_maps.dart';",
//       ],
//     };
//     File('$genFolder/naver_maps_core.dart')
//       ..createSync(recursive: true)
//       ..writeAsStringSync(DartFormatter().format('''
// $licence

// @JS('naver.maps')
// library maps;

// ${imports[library]?.join()}

// $partList
// '''));
//   }
// }

// //
// DocEntity parseDocEntity(Element element) {
//   DocEntity docEntity = DocEntity()
//     ..methods = []
//     ..events = []
//     ..properties = [];

//   var section = element.querySelector("section");
//   var aticle = section.querySelector("article");
//   var overview = aticle.getElementsByClassName("container-overview")[0];
//   if (overview.querySelector("tbody") != null) {
//     docEntity.constructor = DocMethod()
//       ..parameters = overview
//           .querySelector("tbody")
//           .children
//           .map((e) => DocMethodParameter()
//             ..name = e
//                 .getElementsByClassName("name")[0]
//                 .text
//                 .replaceAll(" ", "")
//                 .replaceAll("\n", "")
//             ..type = e
//                 .getElementsByClassName("type")[0]
//                 .text
//                 .split(".")
//                 .last
//                 .replaceAll(" ", "")
//                 .replaceAll("\n", ""))
//           .toList();
//   } else {
//     docEntity.constructor = DocMethod();
//   }

//   var h3s = aticle.querySelectorAll("h3");
//   h3s.forEach((element) {
//     if (element.text == "Extends") {
//       docEntity.extendsName = element.nextElementSibling.text
//           .split(".")
//           .last
//           .replaceAll(" ", "")
//           .replaceAll("\n", "");
//     } else if (element.text == "Type Definitions") {
//     } else if (element.text == "Methods") {
//       var methodElementGroups = element.nextElementSibling;
//       var mNameElement = methodElementGroups.querySelectorAll("dt");
//       mNameElement.forEach((e) {
//         DocMethod docMethod = DocMethod();
//         docMethod.name = e.text
//             .split("(")[0]
//             .replaceAll("<abstract>", "")
//             .replaceAll(" ", "")
//             .replaceAll("\n", "");
//         docMethod.parameters = [];
//         docMethod.optionalParameters = [];
//         docMethod.comment =
//             e.nextElementSibling.text.replaceAll(" ", "").replaceAll("\n", "");
//         docMethod.returnType = "None";
//         var header = e.nextElementSibling.querySelectorAll("h5");

//         header.forEach((element) {
//           if (element.text == "Returns") {
//             var tableElement = element.nextElementSibling;
//             if (tableElement != null) {
//               tableElement.querySelector("tbody").children.forEach((e) {
//                 var name = e.getElementsByClassName("name").isNotEmpty
//                     ? e.getElementsByClassName("name")[0]
//                     : null;
//                 var description =
//                     e.getElementsByClassName("description last").isNotEmpty
//                         ? e.getElementsByClassName("description last")[0]
//                         : null;
//                 if (name.text.contains("Array")) {
//                   docMethod.returnType =
//                       name.text.replaceAll(" ", "").replaceAll("\n", "");
//                 } else {
//                   docMethod.returnType = name.text
//                       .split(".")
//                       .last
//                       .replaceAll(" ", "")
//                       .replaceAll("\n", "");
//                 }
//               });
//             }
//           } else if (element.text == "Parameters") {
//             var tableElement = element.nextElementSibling;
//             if (tableElement != null) {
//               tableElement.querySelector("tbody").children.forEach((e) {
//                 var name = e.getElementsByClassName("name").isNotEmpty
//                     ? e.getElementsByClassName("name")[0]
//                     : null;
//                 var type = e.getElementsByClassName("type").isNotEmpty
//                     ? e.getElementsByClassName("type")[0]
//                     : null;
//                 var optional = e.getElementsByClassName("attributes").isNotEmpty
//                     ? e.getElementsByClassName("type")[0]
//                     : null;
//                 var description =
//                     e.getElementsByClassName("description last").isNotEmpty
//                         ? e.getElementsByClassName("description last")[0]
//                         : null;
//                 if (type.text.contains("Array")) {
//                   var result = DocMethodParameter()
//                     ..name =
//                         name?.text?.replaceAll(" ", "")?.replaceAll("\n", "")
//                     ..type = type?.text
//                             ?.replaceAll(".", "")
//                             .replaceAll(" ", "")
//                             ?.replaceAll("\n", "") ??
//                         "None";
//                   docMethod.parameters.add(result);
//                 } else {
//                   var result = DocMethodParameter()
//                     ..name =
//                         name?.text?.replaceAll(" ", "")?.replaceAll("\n", "")
//                     ..type = type?.text
//                             ?.split(".")
//                             ?.last
//                             ?.replaceAll(" ", "")
//                             ?.replaceAll("\n", "") ??
//                         "None";
//                   docMethod.parameters.add(result);
//                 }
//               });
//             }
//           }
//         });
//         docEntity.methods.add(docMethod);
//       });
//     } else if (element.text == "Events") {}
//   });

//   docEntity.kind = toKind(element.querySelector("h1").text.split(":")[0]);
//   docEntity.fullJsName =
//       element.querySelector("h1").text.split(":")[1].replaceAll(" ", "");
//   docEntity.name = element
//       .querySelector("h1")
//       .text
//       .split(":")[1]
//       .replaceAll(" ", "")
//       .split(".")
//       .last;
//   docEntity.path = element.querySelector("h1").text.split(":")[1].replaceAll(
//       element.querySelector("h1").text.split(":")[1].split(".").last, "");
//   return docEntity;
// }

// enum Kind { clazz, interface, static, types, modules, none }

// class DocEntity {
//   Kind kind;
//   String library;
//   String path;
//   String name;
//   String fullJsName;
//   String extendsName;
//   String implementsName;
//   String comment;
//   DocMethod constructor;
//   List<DocMethod> staticMethods = [];
//   List<DocMethod> methods = [];
//   List<DocProperty> properties = [];
//   List<DocMethod> events = [];
//   List<DocConstant> constants = [];

//   String get fileName {
//     final value = name
//         .capitalize()
//         .replaceAll('.', '_')
//         .replaceAll(RegExp(r'<[A-Z]>'), '')
//         .replaceAllMapped(RegExp(r'([A-Z]+)([A-Z][a-z]+)'),
//             (m) => '${m.group(1).toLowerCase()}_${m.group(2).toLowerCase()}_')
//         .replaceAllMapped(
//             RegExp(r'[A-Z][a-z]+'), (m) => '${m.group(0).toLowerCase()}_');
//     return value.substring(0, value.length - 1);
//   }

//   @override
//   String toString() => 'DocEntity($library ,$kind, $path, $name, $extendsName)';

//   void convertTypes() {
//     extendsName = convertType(extendsName);
//     implementsName = convertType(implementsName);
//     name = convertType(name);
//     constructor?.convertTypes();
//     for (var e in staticMethods) {
//       e.convertTypes();
//     }
//     for (var e in methods) {
//       e.convertTypes();
//     }
//     for (var e in properties) {
//       e.convertTypes();
//     }
//     for (var e in events) {
//       e.convertTypes();
//     }
//   }
// }

// class DocMethod {
//   String name;
//   List<DocMethodParameter> parameters = [];
//   List<DocMethodParameter> optionalParameters = [];
//   String returnType;
//   String comment;

//   void convertTypes() {
//     returnType = convertType(returnType);
//     for (var e in parameters) {
//       e.convertTypes();
//     }
//     for (var e in optionalParameters) {
//       e.convertTypes();
//     }
//   }
// }

// class DocMethodParameter {
//   String name;
//   String type;

//   void convertTypes() {
//     type = convertType(type);
//   }
// }

// class DocProperty {
//   String name;
//   String type;
//   bool optional;
//   String comment;

//   void convertTypes() {
//     type = convertType(type);
//   }
// }

// class DocConstant {
//   String name;
//   String comment;
// }

// Kind toKind(String value) {
//   switch (value.toLowerCase()) {
//     case 'class':
//       return Kind.clazz;
//     case 'interface':
//       return Kind.interface;
//     case 'type':
//       return Kind.types;
//   }
//   throw StateError('Unknown kind: $value');
// }

// class Member {
//   const Member(this.className, this.name);

//   final String className;
//   final String name;

//   @override
//   int get hashCode => 0;

//   @override
//   bool operator ==(other) =>
//       other is Member && other.className == className && other.name == name;
// }

// String generateCodeForEntity(DocEntity entity, List<DocEntity> entities) {
//   switch (entity.kind) {
//     case Kind.clazz:
//       return generateCodeForClass(entity, entities);
//     case Kind.interface:
//       return generateCodeForInterface(entity);
//     case Kind.types:
//       return generateCodeForTypedef(entity);
//   }
//   throw StateError('Unknown kind: ${entity.kind}');
// }

// String generateCodeForClass(DocEntity entity, List<DocEntity> entities) {
//   final additionalProperties = [];
//   final additionalMethods = [];
//   if (entity.kind == Kind.clazz && entity.implementsName != null) {
//     final impl = entities.firstWhere(
//         (e) => e.library == entity.library && e.name == entity.implementsName);
//     for (final p in impl.properties) {
//       if (!entity.properties.any((e) => e.name == p.name)) {
//         additionalProperties.add(p);
//       }
//     }
//     for (final m in impl.methods) {
//       if (!entity.methods.any((e) => e.name == m.name)) {
//         additionalMethods.add(m);
//       }
//     }
//   }

//   final name = entity.name;
//   final lines = <String>[
//     // constructor
//     if (entity.constructor != null) ...<String>[
//       'external ${name.replaceAll(RegExp(r'<.*'), '')}${buildSignature(entity.constructor, addIgnoreUnusedElement: true)};',
//     ],
//     // properties
//     for (var property in [...entity.properties, ...additionalProperties])
//       ...generateCodeForProperty(entity, property),
//     // methods
//     for (var method in [...entity.methods, ...additionalMethods])
//       ...generateCodeForMethod(entity, method),
//     // events
//     for (var method in entity.events) ...generateCodeForEvent(entity, method),
//   ];

//   return '''
// @JS('${entity.fullJsName}')
// class $name
// ${entity.extendsName != null ? 'extends ${entity.extendsName}' : ''}
// ${entity.implementsName != null ? 'implements ${entity.implementsName}' : ''}
// {
// ${lines.join('\n')}
// }
// ''';
// }

// String generateCodeForInterface(DocEntity entity) {
//   final name = entity.name;
//   final lines = <String>[
//     // constructor
//     'factory ${name.replaceAll(RegExp(r'<.*'), '')}() => \$js;',
//     // properties
//     for (var property in entity.properties)
//       ...generateCodeForProperty(entity, property),
//     // methods
//     for (var method in entity.methods) ...generateCodeForMethod(entity, method),
//   ];
//   return '''
// @JsName()
// ${entity.extendsName != null ? '@JS()' : ''}
// @anonymous
// abstract class $name
// ${entity.extendsName != null ? 'extends ${entity.extendsName}' : ''}
// ${entity.implementsName != null ? 'implements ${entity.implementsName}' : ''}
// {
// ${lines.join('\n')}
// }
// ''';
// }

// String generateCodeForNamespace(DocEntity entity) {
//   final name = entity.name.capitalize();
//   final namespace = '_$name\$namespace';
//   final lines = <String>[
//     // static methods
//     for (var method in entity.staticMethods)
//       ...generateCodeForStaticMethod(entity, method, namespace),
//   ];
//   return '''
// @JS('${entity.fullJsName}')
// external Object get $namespace;
// class $name {
// ${lines.join('\n')}
// }
// ''';
// }

// String generateCodeForConstants(DocEntity entity) {
//   final name = entity.name;
//   return '''
// // ignore_for_file: unused_element, unused_field
// @JsName('${entity.fullJsName}')
// enum $name {
// ${entity.constants.map((e) => e.name).join(',')},
// }
// ''';
// }

// // handled directly by alias in convertType
// String generateCodeForTypedef(DocEntity entity) => null;

// List<String> generateCodeForProperty(DocEntity entity, DocProperty property) {
//   return [
//     'external ${property.type} get ${property.name};',
//     'external set ${property.name}(${property.type} ${property.name});',
//   ];
// }

// List<String> generateCodeForMethod(DocEntity entity, DocMethod method) {
//   if (entity.name == 'InheritedFrom') {
//     return [];
//   }
//   return [
//     'external ${method.returnType} ${method.name}${buildSignature(method)};',
//   ];
// }

// List<String> generateCodeForStaticMethod(
//     DocEntity entity, DocMethod method, String namespace) {
//   if (const [Member('event', 'trigger')]
//       .contains(Member(entity.name, method.name))) {
//     return [
//       '',
//       'static void trigger(Object instance, String eventName, List<Object> eventArgs)',
//       "=> callMethod($namespace, 'trigger', [instance, eventName, ...?eventArgs]);",
//       '',
//     ];
//   }
//   final params = [...method.parameters, ...method.optionalParameters]
//       .map((e) => e.type == 'Function' ? 'allowInterop(${e.name})' : e.name)
//       .join(',');
//   return [
//     'static ${method.returnType} ${method.name}${buildSignature(method)}',
//     "  => callMethod($namespace, '${method.name}', [$params]);",
//   ];
// }

// List<String> generateCodeForEvent(DocEntity entity, DocMethod method) {
//   final eventName = method.name;
//   final streamName = [
//     'on',
//     ...eventName.split('_').map((e) => e.capitalize()),
//   ].join();
//   String params;
//   String type;
//   if (method.parameters.isEmpty && method.optionalParameters.isEmpty) {
//     type = 'void';
//     params = 'null';
//   } else if (method.parameters.length == 1 &&
//       method.optionalParameters.isEmpty) {
//     type = method.parameters.first.type;
//     params = method.parameters.first.name;
//   } else {
//     type = 'List';
//     final names = [...method.parameters, ...method.optionalParameters]
//         .map((e) => e.name)
//         .join(',');
//     params = '[$names]';
//   }

//   return [
//     '''
//     Stream<$type> get $streamName {
//       StreamController<$type> sc; // ignore: close_sinks
//       MapsEventListener mapsEventListener;
//       void start() => mapsEventListener = Event.addListener(
//         this,
//         '$eventName',
//         ${buildSignature(method)} => sc.add($params),
//       );
//       void stop() => mapsEventListener.remove();
//       sc = StreamController<$type>(
//         onListen: start,
//         onCancel: stop,
//         onResume: start,
//         onPause: stop,
//       );
//       return sc.stream;
//     }''',
//   ];
// }

// String buildSignature(DocMethod method, {bool addIgnoreUnusedElement = false}) {
//   final params = method.parameters ?? [];
//   final optionalParams = method.optionalParameters ?? [];
//   final result = StringBuffer('(')
//     ..write(params.map((param) => '${param.type} ${param.name}').join(','));
//   if (optionalParams.isNotEmpty) {
//     if (params.isNotEmpty) {
//       result.write(',');
//     }
//     result
//       ..write('[')
//       ..write(optionalParams
//           .map((param) => '${param.type} ${param.name},')
//           .map((e) =>
//               addIgnoreUnusedElement ? '$e // ignore: unused_element\n' : e)
//           .join())
//       ..write(']');
//   }
//   result.write(')');
//   return result.toString();
// }

// String convertType(String type) {
//   if (type == "MapEventListener|Array<MapEventListener>")
//     return 'List<MapEventListener>';
//   else if (type == null) return null;
//   final myType = type.trim();
//   if (myType == 'boolean')
//     return 'bool';
//   else if (myType == 'number')
//     return 'num';
//   else if (myType == 'string')
//     return 'String';
//   else if (myType == 'Date')
//     return 'DateTime';
//   else if (myType == 'HTMLInputElement')
//     return 'InputElement';
//   else if (myType == 'HTMLDivElement')
//     return 'DivElement';
//   else if (myType == 'HTMLElement')
//     return 'HtmlElement';
//   else if (myType == 'function')
//     return 'Function';
//   else if (myType == 'Event')
//     return 'Object';
//   else if (myType == 'Array')
//     return 'List';
//   else if (myType == 'None')
//     return 'void';
//   else if (myType == '*')
//     return 'Object';
//   else if (myType == '?')
//     return 'Object';
//   else if (myType == "any")
//     return 'dynamic';
//   else if (myType == 'object')
//     return 'Object';
//   else if (customClassName.containsKey(myType))
//     return convertType(customClassName[myType]);
//   else if (myType.startsWith('(') && myType.endsWith(')'))
//     return convertType(myType.substring(1, myType.length - 1));
//   else if (splitComplexTypeBy(myType, '|').length > 1) {
//     for (final ignoredClass in ignoredClasses) {
//       if (myType.startsWith('$ignoredClass|')) {
//         return convertType(myType.substring('$ignoredClass|'.length));
//       }
//       if (myType.endsWith('|$ignoredClass')) {
//         return convertType(
//             myType.substring(0, myType.lastIndexOf('|$ignoredClass')));
//       }
//       if (myType.contains('|$ignoredClass|')) {
//         return convertType(myType.replaceAll('|$ignoredClass|', '|'));
//       }
//     }
//     final typeUnion = splitComplexTypeBy(myType, '|');
//     final dartUnion = typeUnion.map(convertType).join('|');
//     return 'Object/*$dartUnion*/';
//   } else if (myType.startsWith('{') && myType.endsWith('}')) {
//     final tupleContent =
//         splitComplexTypeBy(myType.substring(1, myType.length - 1), ',')
//             .map((p) => splitComplexTypeBy(p.trim(), ':'))
//             .map((e) => [convertType(e[1].trim()), e[0].trim()].join(' '))
//             .join(', ');
//     return '($tupleContent)';
//   } else if (myType.startsWith('Object<') && myType.endsWith('>')) {
//     final innerType =
//         convertType(myType.substring('Object<'.length, myType.length - 1));
//     return 'Map<String, $innerType>';
//   } else if (myType.startsWith('Array<') && myType.endsWith('>')) {
//     final innerType =
//         convertType(myType.substring('Array<'.length, myType.length - 1));
//     return 'List<$innerType>';
//   } else if (myType.startsWith('function(')) {
//     final parts = splitComplexTypeBy(myType, ':');
//     final returnType =
//         parts.length > 1 ? convertType(parts.skip(1).join(':')) : 'void';
//     var i = 1;
//     final params = splitComplexTypeBy(
//             parts[0].substring('function('.length, parts[0].lastIndexOf(')')),
//             ',')
//         .map(convertType)
//         .map((p) => '$p p${i++}')
//         .join(',');
//     return '$returnType Function($params)';
//   } else if (myType.startsWith('MVCArray<') && myType.endsWith('>')) {
//     final innerType =
//         convertType(myType.substring('MVCArray<'.length, myType.length - 1));
//     return 'MVCArray<$innerType>';
//   } else {
//     return myType.replaceAll('.', '');
//   }
// }

// List<String> splitComplexTypeBy(String type, String char) {
//   final typeParts = <String>[];
//   var bracketDeepth = 0;
//   var parenthesisDeepth = 0;
//   var genericDeepth = 0;
//   final buffer = StringBuffer();
//   for (var i = 0; i < type.length; i++) {
//     final c = type[i];
//     if (c == char &&
//         bracketDeepth == 0 &&
//         parenthesisDeepth == 0 &&
//         genericDeepth == 0) {
//       typeParts.add(buffer.toString());
//       buffer.clear();
//       continue;
//     }
//     if (c == '{') bracketDeepth++;
//     if (c == '}') bracketDeepth--;
//     if (c == '(') parenthesisDeepth++;
//     if (c == ')') parenthesisDeepth--;
//     if (c == '<') genericDeepth++;
//     if (c == '>') genericDeepth--;
//     buffer.write(c);
//   }
//   if (buffer.isNotEmpty) typeParts.add(buffer.toString());
//   return typeParts;
// }

// extension on String {
//   String capitalize() => this[0].toUpperCase() + substring(1);

//   String unCapitalize() => this[0].toLowerCase() + substring(1);
// }
