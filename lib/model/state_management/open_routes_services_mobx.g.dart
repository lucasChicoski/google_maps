// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_routes_services_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OpenRouteServicesMobx on _OpenRouteServicesMobxBase, Store {
  final _$boundsAtom = Atom(name: '_OpenRouteServicesMobxBase.bounds');

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

  final _$polyLinesAtom = Atom(name: '_OpenRouteServicesMobxBase.polyLines');

  @override
  Set<Polyline> get polyLines {
    _$polyLinesAtom.reportRead();
    return super.polyLines;
  }

  @override
  set polyLines(Set<Polyline> value) {
    _$polyLinesAtom.reportWrite(value, super.polyLines, () {
      super.polyLines = value;
    });
  }

  final _$_OpenRouteServicesMobxBaseActionController =
      ActionController(name: '_OpenRouteServicesMobxBase');

  @override
  void setPolylinesCoordinates(dynamic values) {
    final _$actionInfo =
        _$_OpenRouteServicesMobxBaseActionController.startAction(
            name: '_OpenRouteServicesMobxBase.setPolylinesCoordinates');
    try {
      return super.setPolylinesCoordinates(values);
    } finally {
      _$_OpenRouteServicesMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBounds(LatLngBounds value) {
    final _$actionInfo = _$_OpenRouteServicesMobxBaseActionController
        .startAction(name: '_OpenRouteServicesMobxBase.setBounds');
    try {
      return super.setBounds(value);
    } finally {
      _$_OpenRouteServicesMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPolyLines() {
    final _$actionInfo = _$_OpenRouteServicesMobxBaseActionController
        .startAction(name: '_OpenRouteServicesMobxBase.setPolyLines');
    try {
      return super.setPolyLines();
    } finally {
      _$_OpenRouteServicesMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bounds: ${bounds},
polyLines: ${polyLines}
    ''';
  }
}
