// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocator_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GeoLocatorController on _GeoLocatorControllerBase, Store {
  final _$locationPermissionAtom =
      Atom(name: '_GeoLocatorControllerBase.locationPermission');

  @override
  bool get locationPermission {
    _$locationPermissionAtom.reportRead();
    return super.locationPermission;
  }

  @override
  set locationPermission(bool value) {
    _$locationPermissionAtom.reportWrite(value, super.locationPermission, () {
      super.locationPermission = value;
    });
  }

  final _$sourceIconAtom = Atom(name: '_GeoLocatorControllerBase.sourceIcon');

  @override
  BitmapDescriptor? get sourceIcon {
    _$sourceIconAtom.reportRead();
    return super.sourceIcon;
  }

  @override
  set sourceIcon(BitmapDescriptor? value) {
    _$sourceIconAtom.reportWrite(value, super.sourceIcon, () {
      super.sourceIcon = value;
    });
  }

  final _$markersAtom = Atom(name: '_GeoLocatorControllerBase.markers');

  @override
  Set<Marker> get markers {
    _$markersAtom.reportRead();
    return super.markers;
  }

  @override
  set markers(Set<Marker> value) {
    _$markersAtom.reportWrite(value, super.markers, () {
      super.markers = value;
    });
  }

  final _$listenPositionAtom =
      Atom(name: '_GeoLocatorControllerBase.listenPosition');

  @override
  StreamSubscription<dynamic>? get listenPosition {
    _$listenPositionAtom.reportRead();
    return super.listenPosition;
  }

  @override
  set listenPosition(StreamSubscription<dynamic>? value) {
    _$listenPositionAtom.reportWrite(value, super.listenPosition, () {
      super.listenPosition = value;
    });
  }

  final _$myCurrentPositionAtom =
      Atom(name: '_GeoLocatorControllerBase.myCurrentPosition');

  @override
  LatLng? get myCurrentPosition {
    _$myCurrentPositionAtom.reportRead();
    return super.myCurrentPosition;
  }

  @override
  set myCurrentPosition(LatLng? value) {
    _$myCurrentPositionAtom.reportWrite(value, super.myCurrentPosition, () {
      super.myCurrentPosition = value;
    });
  }

  final _$getMyPositionAsyncAction =
      AsyncAction('_GeoLocatorControllerBase.getMyPosition');

  @override
  Future<geolocator_lib.Position> getMyPosition() {
    return _$getMyPositionAsyncAction.run(() => super.getMyPosition());
  }

  final _$setMarkerAsyncAction =
      AsyncAction('_GeoLocatorControllerBase.setMarker');

  @override
  Future<dynamic> setMarker(LatLng position) {
    return _$setMarkerAsyncAction.run(() => super.setMarker(position));
  }

  final _$listenerPositionAsyncAction =
      AsyncAction('_GeoLocatorControllerBase.listenerPosition');

  @override
  Future<dynamic> listenerPosition() {
    return _$listenerPositionAsyncAction.run(() => super.listenerPosition());
  }

  final _$determinePositionAsyncAction =
      AsyncAction('_GeoLocatorControllerBase.determinePosition');

  @override
  Future<geolocator_lib.Position> determinePosition() {
    return _$determinePositionAsyncAction.run(() => super.determinePosition());
  }

  final _$setSourceAndDestinationIconsAsyncAction =
      AsyncAction('_GeoLocatorControllerBase.setSourceAndDestinationIcons');

  @override
  Future<dynamic> setSourceAndDestinationIcons() {
    return _$setSourceAndDestinationIconsAsyncAction
        .run(() => super.setSourceAndDestinationIcons());
  }

  final _$_GeoLocatorControllerBaseActionController =
      ActionController(name: '_GeoLocatorControllerBase');

  @override
  dynamic setmyCurrentPosition(LatLng value) {
    final _$actionInfo = _$_GeoLocatorControllerBaseActionController
        .startAction(name: '_GeoLocatorControllerBase.setmyCurrentPosition');
    try {
      return super.setmyCurrentPosition(value);
    } finally {
      _$_GeoLocatorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLocationPermission(bool value) {
    final _$actionInfo = _$_GeoLocatorControllerBaseActionController
        .startAction(name: '_GeoLocatorControllerBase.setLocationPermission');
    try {
      return super.setLocationPermission(value);
    } finally {
      _$_GeoLocatorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locationPermission: ${locationPermission},
sourceIcon: ${sourceIcon},
markers: ${markers},
listenPosition: ${listenPosition},
myCurrentPosition: ${myCurrentPosition}
    ''';
  }
}
