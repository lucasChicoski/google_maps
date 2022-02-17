import 'dart:ffi';

import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'geolocator_controller.g.dart';

@singleton
class GeoLocatorController = _GeoLocatorControllerBase
    with _$GeoLocatorController;

abstract class _GeoLocatorControllerBase with Store {
  @action
  Future<Position> getMyPosition() async {
    await determinePosition();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return position;
  }

  @action
  Future listenerPosition() async {
    await Geolocator.checkPermission().then((LocationPermission permission) {
      print(" =============================> $permission");

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        print("===========================================>>>>>> Nothing");
      } else if (permission == LocationPermission.denied) {
        print(
            "===========================================>>>>>> Need to permition");
        Geolocator.requestPermission();
      } else {
        Exception('Is necessary to enable your location');
      }
    });
  }

  @action
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
