// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_maps.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GoogleMapsControllerMobX on _GoogleMapsControllerMobXBase, Store {
  final _$mobXControllerAtom =
      Atom(name: '_GoogleMapsControllerMobXBase.mobXController');

  @override
  Completer<GoogleMapController> get mobXController {
    _$mobXControllerAtom.reportRead();
    return super.mobXController;
  }

  @override
  set mobXController(Completer<GoogleMapController> value) {
    _$mobXControllerAtom.reportWrite(value, super.mobXController, () {
      super.mobXController = value;
    });
  }

  final _$myCurrentPositionAtom =
      Atom(name: '_GoogleMapsControllerMobXBase.myCurrentPosition');

  @override
  LatLng get myCurrentPosition {
    _$myCurrentPositionAtom.reportRead();
    return super.myCurrentPosition;
  }

  @override
  set myCurrentPosition(LatLng value) {
    _$myCurrentPositionAtom.reportWrite(value, super.myCurrentPosition, () {
      super.myCurrentPosition = value;
    });
  }

  final _$boundNortheastAtom =
      Atom(name: '_GoogleMapsControllerMobXBase.boundNortheast');

  @override
  LatLng? get boundNortheast {
    _$boundNortheastAtom.reportRead();
    return super.boundNortheast;
  }

  @override
  set boundNortheast(LatLng? value) {
    _$boundNortheastAtom.reportWrite(value, super.boundNortheast, () {
      super.boundNortheast = value;
    });
  }

  final _$boundSouthwestAtom =
      Atom(name: '_GoogleMapsControllerMobXBase.boundSouthwest');

  @override
  LatLng? get boundSouthwest {
    _$boundSouthwestAtom.reportRead();
    return super.boundSouthwest;
  }

  @override
  set boundSouthwest(LatLng? value) {
    _$boundSouthwestAtom.reportWrite(value, super.boundSouthwest, () {
      super.boundSouthwest = value;
    });
  }

  final _$boundsAtom = Atom(name: '_GoogleMapsControllerMobXBase.bounds');

  @override
  LatLngBounds? get bounds {
    _$boundsAtom.reportRead();
    return super.bounds;
  }

  @override
  set bounds(LatLngBounds? value) {
    _$boundsAtom.reportWrite(value, super.bounds, () {
      super.bounds = value;
    });
  }

  final _$zoomAtom = Atom(name: '_GoogleMapsControllerMobXBase.zoom');

  @override
  double get zoom {
    _$zoomAtom.reportRead();
    return super.zoom;
  }

  @override
  set zoom(double value) {
    _$zoomAtom.reportWrite(value, super.zoom, () {
      super.zoom = value;
    });
  }

  final _$codePolyLineAtom =
      Atom(name: '_GoogleMapsControllerMobXBase.codePolyLine');

  @override
  String? get codePolyLine {
    _$codePolyLineAtom.reportRead();
    return super.codePolyLine;
  }

  @override
  set codePolyLine(String? value) {
    _$codePolyLineAtom.reportWrite(value, super.codePolyLine, () {
      super.codePolyLine = value;
    });
  }

  final _$setMyCurrentPositionAsyncAction =
      AsyncAction('_GoogleMapsControllerMobXBase.setMyCurrentPosition');

  @override
  Future<dynamic> setMyCurrentPosition() {
    return _$setMyCurrentPositionAsyncAction
        .run(() => super.setMyCurrentPosition());
  }

  final _$centerRouteAsyncAction =
      AsyncAction('_GoogleMapsControllerMobXBase.centerRoute');

  @override
  Future<dynamic> centerRoute() {
    return _$centerRouteAsyncAction.run(() => super.centerRoute());
  }

  final _$getRoutesAsyncAction =
      AsyncAction('_GoogleMapsControllerMobXBase.getRoutes');

  @override
  Future<dynamic> getRoutes() {
    return _$getRoutesAsyncAction.run(() => super.getRoutes());
  }

  final _$_GoogleMapsControllerMobXBaseActionController =
      ActionController(name: '_GoogleMapsControllerMobXBase');

  @override
  void setBoundNortheast(LatLng value) {
    final _$actionInfo = _$_GoogleMapsControllerMobXBaseActionController
        .startAction(name: '_GoogleMapsControllerMobXBase.setBoundNortheast');
    try {
      return super.setBoundNortheast(value);
    } finally {
      _$_GoogleMapsControllerMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBoundSouthwest(LatLng value) {
    final _$actionInfo = _$_GoogleMapsControllerMobXBaseActionController
        .startAction(name: '_GoogleMapsControllerMobXBase.setBoundSouthwest');
    try {
      return super.setBoundSouthwest(value);
    } finally {
      _$_GoogleMapsControllerMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBounds(LatLngBounds value) {
    final _$actionInfo = _$_GoogleMapsControllerMobXBaseActionController
        .startAction(name: '_GoogleMapsControllerMobXBase.setBounds');
    try {
      return super.setBounds(value);
    } finally {
      _$_GoogleMapsControllerMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCodePolyLine(String value) {
    final _$actionInfo = _$_GoogleMapsControllerMobXBaseActionController
        .startAction(name: '_GoogleMapsControllerMobXBase.setCodePolyLine');
    try {
      return super.setCodePolyLine(value);
    } finally {
      _$_GoogleMapsControllerMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mobXController: ${mobXController},
myCurrentPosition: ${myCurrentPosition},
boundNortheast: ${boundNortheast},
boundSouthwest: ${boundSouthwest},
bounds: ${bounds},
zoom: ${zoom},
codePolyLine: ${codePolyLine}
    ''';
  }
}
