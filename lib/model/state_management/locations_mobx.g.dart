// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LocationMobx on _LocationMobxBase, Store {
  final _$currentLocationAtom = Atom(name: '_LocationMobxBase.currentLocation');

  @override
  LocationData? get currentLocation {
    _$currentLocationAtom.reportRead();
    return super.currentLocation;
  }

  @override
  set currentLocation(LocationData? value) {
    _$currentLocationAtom.reportWrite(value, super.currentLocation, () {
      super.currentLocation = value;
    });
  }

  final _$locationAtom = Atom(name: '_LocationMobxBase.location');

  @override
  Location? get location {
    _$locationAtom.reportRead();
    return super.location;
  }

  @override
  set location(Location? value) {
    _$locationAtom.reportWrite(value, super.location, () {
      super.location = value;
    });
  }

  final _$markersAtom = Atom(name: '_LocationMobxBase.markers');

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

  final _$sourceIconAtom = Atom(name: '_LocationMobxBase.sourceIcon');

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

  final _$updatePinOnMapAsyncAction =
      AsyncAction('_LocationMobxBase.updatePinOnMap');

  @override
  Future<dynamic> updatePinOnMap() {
    return _$updatePinOnMapAsyncAction.run(() => super.updatePinOnMap());
  }

  final _$setSourceAndDestinationIconsAsyncAction =
      AsyncAction('_LocationMobxBase.setSourceAndDestinationIcons');

  @override
  Future<dynamic> setSourceAndDestinationIcons() {
    return _$setSourceAndDestinationIconsAsyncAction
        .run(() => super.setSourceAndDestinationIcons());
  }

  final _$_LocationMobxBaseActionController =
      ActionController(name: '_LocationMobxBase');

  @override
  void currentPositionListener() {
    final _$actionInfo = _$_LocationMobxBaseActionController.startAction(
        name: '_LocationMobxBase.currentPositionListener');
    try {
      return super.currentPositionListener();
    } finally {
      _$_LocationMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showPinsOnMap() {
    final _$actionInfo = _$_LocationMobxBaseActionController.startAction(
        name: '_LocationMobxBase.showPinsOnMap');
    try {
      return super.showPinsOnMap();
    } finally {
      _$_LocationMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentLocation: ${currentLocation},
location: ${location},
markers: ${markers},
sourceIcon: ${sourceIcon}
    ''';
  }
}
