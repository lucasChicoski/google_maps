// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapbox_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapBoxMobx on _MapBoxMobxBase, Store {
  final _$directionsAtom = Atom(name: '_MapBoxMobxBase.directions');

  @override
  MapBoxNavigation? get directions {
    _$directionsAtom.reportRead();
    return super.directions;
  }

  @override
  set directions(MapBoxNavigation? value) {
    _$directionsAtom.reportWrite(value, super.directions, () {
      super.directions = value;
    });
  }

  final _$optionsAtom = Atom(name: '_MapBoxMobxBase.options');

  @override
  MapBoxOptions? get options {
    _$optionsAtom.reportRead();
    return super.options;
  }

  @override
  set options(MapBoxOptions? value) {
    _$optionsAtom.reportWrite(value, super.options, () {
      super.options = value;
    });
  }

  final _$isMultipleStopAtom = Atom(name: '_MapBoxMobxBase.isMultipleStop');

  @override
  bool get isMultipleStop {
    _$isMultipleStopAtom.reportRead();
    return super.isMultipleStop;
  }

  @override
  set isMultipleStop(bool value) {
    _$isMultipleStopAtom.reportWrite(value, super.isMultipleStop, () {
      super.isMultipleStop = value;
    });
  }

  final _$distanceRemainingAtom =
      Atom(name: '_MapBoxMobxBase.distanceRemaining');

  @override
  double? get distanceRemaining {
    _$distanceRemainingAtom.reportRead();
    return super.distanceRemaining;
  }

  @override
  set distanceRemaining(double? value) {
    _$distanceRemainingAtom.reportWrite(value, super.distanceRemaining, () {
      super.distanceRemaining = value;
    });
  }

  final _$durationRemainingAtom =
      Atom(name: '_MapBoxMobxBase.durationRemaining');

  @override
  double? get durationRemaining {
    _$durationRemainingAtom.reportRead();
    return super.durationRemaining;
  }

  @override
  set durationRemaining(double? value) {
    _$durationRemainingAtom.reportWrite(value, super.durationRemaining, () {
      super.durationRemaining = value;
    });
  }

  final _$controllerAtom = Atom(name: '_MapBoxMobxBase.controller');

  @override
  MapBoxNavigationViewController? get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(MapBoxNavigationViewController? value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  final _$routeBuiltAtom = Atom(name: '_MapBoxMobxBase.routeBuilt');

  @override
  bool get routeBuilt {
    _$routeBuiltAtom.reportRead();
    return super.routeBuilt;
  }

  @override
  set routeBuilt(bool value) {
    _$routeBuiltAtom.reportWrite(value, super.routeBuilt, () {
      super.routeBuilt = value;
    });
  }

  final _$isNavigatingAtom = Atom(name: '_MapBoxMobxBase.isNavigating');

  @override
  bool get isNavigating {
    _$isNavigatingAtom.reportRead();
    return super.isNavigating;
  }

  @override
  set isNavigating(bool value) {
    _$isNavigatingAtom.reportWrite(value, super.isNavigating, () {
      super.isNavigating = value;
    });
  }

  final _$platformVersionAtom = Atom(name: '_MapBoxMobxBase.platformVersion');

  @override
  String get platformVersion {
    _$platformVersionAtom.reportRead();
    return super.platformVersion;
  }

  @override
  set platformVersion(String value) {
    _$platformVersionAtom.reportWrite(value, super.platformVersion, () {
      super.platformVersion = value;
    });
  }

  final _$instructionAtom = Atom(name: '_MapBoxMobxBase.instruction');

  @override
  String get instruction {
    _$instructionAtom.reportRead();
    return super.instruction;
  }

  @override
  set instruction(String value) {
    _$instructionAtom.reportWrite(value, super.instruction, () {
      super.instruction = value;
    });
  }

  final _$arrivedAtom = Atom(name: '_MapBoxMobxBase.arrived');

  @override
  RouteProgressEvent? get arrived {
    _$arrivedAtom.reportRead();
    return super.arrived;
  }

  @override
  set arrived(RouteProgressEvent? value) {
    _$arrivedAtom.reportWrite(value, super.arrived, () {
      super.arrived = value;
    });
  }

  final _$simulateRouteAtom = Atom(name: '_MapBoxMobxBase.simulateRoute');

  @override
  bool get simulateRoute {
    _$simulateRouteAtom.reportRead();
    return super.simulateRoute;
  }

  @override
  set simulateRoute(bool value) {
    _$simulateRouteAtom.reportWrite(value, super.simulateRoute, () {
      super.simulateRoute = value;
    });
  }

  final _$startNavigateAsyncAction =
      AsyncAction('_MapBoxMobxBase.startNavigate');

  @override
  Future<dynamic> startNavigate() {
    return _$startNavigateAsyncAction.run(() => super.startNavigate());
  }

  final _$onRouteEventAsyncAction = AsyncAction('_MapBoxMobxBase.onRouteEvent');

  @override
  Future<void> onRouteEvent(dynamic e) {
    return _$onRouteEventAsyncAction.run(() => super.onRouteEvent(e));
  }

  @override
  String toString() {
    return '''
directions: ${directions},
options: ${options},
isMultipleStop: ${isMultipleStop},
distanceRemaining: ${distanceRemaining},
durationRemaining: ${durationRemaining},
controller: ${controller},
routeBuilt: ${routeBuilt},
isNavigating: ${isNavigating},
platformVersion: ${platformVersion},
instruction: ${instruction},
arrived: ${arrived},
simulateRoute: ${simulateRoute}
    ''';
  }
}
