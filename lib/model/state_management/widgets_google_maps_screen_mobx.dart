import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'widgets_google_maps_screen_mobx.g.dart';

@singleton
class WidgetsGoogleMapsScreenMobx = _WidgetsGoogleMapsScreenMobxBase
    with _$WidgetsGoogleMapsScreenMobx;

abstract class _WidgetsGoogleMapsScreenMobxBase with Store {
  @observable
  bool switchButton = false;

  @action
  void setSwitchButton(bool value) {
    switchButton = value;
  }

  @observable
  bool showMyPointer = false;

  @action
  setshowMyPointer(bool value) => showMyPointer = value;

  @observable
  bool showSnackBar = false;

  @action
  setshowSnackBar() => showSnackBar = !showSnackBar;
}
