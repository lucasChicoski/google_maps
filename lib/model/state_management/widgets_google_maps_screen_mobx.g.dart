// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widgets_google_maps_screen_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WidgetsGoogleMapsScreenMobx on _WidgetsGoogleMapsScreenMobxBase, Store {
  final _$switchButtonAtom =
      Atom(name: '_WidgetsGoogleMapsScreenMobxBase.switchButton');

  @override
  bool get switchButton {
    _$switchButtonAtom.reportRead();
    return super.switchButton;
  }

  @override
  set switchButton(bool value) {
    _$switchButtonAtom.reportWrite(value, super.switchButton, () {
      super.switchButton = value;
    });
  }

  final _$showMyPointerAtom =
      Atom(name: '_WidgetsGoogleMapsScreenMobxBase.showMyPointer');

  @override
  bool get showMyPointer {
    _$showMyPointerAtom.reportRead();
    return super.showMyPointer;
  }

  @override
  set showMyPointer(bool value) {
    _$showMyPointerAtom.reportWrite(value, super.showMyPointer, () {
      super.showMyPointer = value;
    });
  }

  final _$showSnackBarAtom =
      Atom(name: '_WidgetsGoogleMapsScreenMobxBase.showSnackBar');

  @override
  bool get showSnackBar {
    _$showSnackBarAtom.reportRead();
    return super.showSnackBar;
  }

  @override
  set showSnackBar(bool value) {
    _$showSnackBarAtom.reportWrite(value, super.showSnackBar, () {
      super.showSnackBar = value;
    });
  }

  final _$_WidgetsGoogleMapsScreenMobxBaseActionController =
      ActionController(name: '_WidgetsGoogleMapsScreenMobxBase');

  @override
  void setSwitchButton(bool value) {
    final _$actionInfo = _$_WidgetsGoogleMapsScreenMobxBaseActionController
        .startAction(name: '_WidgetsGoogleMapsScreenMobxBase.setSwitchButton');
    try {
      return super.setSwitchButton(value);
    } finally {
      _$_WidgetsGoogleMapsScreenMobxBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic setshowMyPointer(bool value) {
    final _$actionInfo = _$_WidgetsGoogleMapsScreenMobxBaseActionController
        .startAction(name: '_WidgetsGoogleMapsScreenMobxBase.setshowMyPointer');
    try {
      return super.setshowMyPointer(value);
    } finally {
      _$_WidgetsGoogleMapsScreenMobxBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic setshowSnackBar() {
    final _$actionInfo = _$_WidgetsGoogleMapsScreenMobxBaseActionController
        .startAction(name: '_WidgetsGoogleMapsScreenMobxBase.setshowSnackBar');
    try {
      return super.setshowSnackBar();
    } finally {
      _$_WidgetsGoogleMapsScreenMobxBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
switchButton: ${switchButton},
showMyPointer: ${showMyPointer},
showSnackBar: ${showSnackBar}
    ''';
  }
}
