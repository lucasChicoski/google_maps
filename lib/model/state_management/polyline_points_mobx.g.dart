// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polyline_points_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PolyLinePointsMobx on _PolyLinePointsMobxBase, Store {
  final _$polyLinesAtom = Atom(name: '_PolyLinePointsMobxBase.polyLines');

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

  final _$_PolyLinePointsMobxBaseActionController =
      ActionController(name: '_PolyLinePointsMobxBase');

  @override
  List<PointLatLng> decodePolyLines(String value) {
    final _$actionInfo = _$_PolyLinePointsMobxBaseActionController.startAction(
        name: '_PolyLinePointsMobxBase.decodePolyLines');
    try {
      return super.decodePolyLines(value);
    } finally {
      _$_PolyLinePointsMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPolyLines() {
    final _$actionInfo = _$_PolyLinePointsMobxBaseActionController.startAction(
        name: '_PolyLinePointsMobxBase.setPolyLines');
    try {
      return super.setPolyLines();
    } finally {
      _$_PolyLinePointsMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
polyLines: ${polyLines}
    ''';
  }
}
