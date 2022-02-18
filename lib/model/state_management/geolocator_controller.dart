import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as geolocator_lib;
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:maps_pilote/model/state_management/google_maps.dart';
import 'package:maps_pilote/model/state_management/widgets_google_maps_screen_mobx.dart';
import 'package:mobx/mobx.dart';
part 'geolocator_controller.g.dart';

GoogleMapsControllerMobX _googleMapsControllerMobX =
    GetIt.I<GoogleMapsControllerMobX>();

WidgetsGoogleMapsScreenMobx _widgetsGoogleMapsScreenMobx =
    GetIt.I<WidgetsGoogleMapsScreenMobx>();

@singleton
class GeoLocatorController = _GeoLocatorControllerBase
    with _$GeoLocatorController;

abstract class _GeoLocatorControllerBase with Store {
  @action
  Future<geolocator_lib.Position> getMyPosition() async {
    await determinePosition();
    geolocator_lib.Position position =
        await geolocator_lib.Geolocator.getCurrentPosition(
            desiredAccuracy: geolocator_lib.LocationAccuracy.high);
    return position;
  }

  @observable
  bool locationPermission = false;

  @observable
  BitmapDescriptor? sourceIcon;

  @observable
  Set<Marker> markers = {};

  @observable
  StreamSubscription? listenPosition;

  @action
  Future setMarker(LatLng position) async {
    await setSourceAndDestinationIcons();
    markers.removeWhere((m) => m.markerId.value == "currentPosition");
    markers.add(
      Marker(
          markerId: const MarkerId('currentPosition'),
          position: position,
          icon: sourceIcon!),
    );
  }

  @observable
  LatLng? myCurrentPosition;

  @action
  setmyCurrentPosition(LatLng value) => myCurrentPosition = value;

  @action
  setLocationPermission(bool value) => locationPermission = value;

  @action
  Future listenerPosition() async {
    await geolocator_lib.Geolocator.checkPermission().then((permission) {
      print(" ==============================>>>>>>>>>>> $permission");

      if (permission == geolocator_lib.LocationPermission.denied) {
        geolocator_lib.Geolocator.requestPermission();
      } else {
        setLocationPermission(true);
      }
    });

    if (locationPermission) {
      await getMyPosition().then((value) {
        setmyCurrentPosition(LatLng(value.latitude, value.longitude));
      });

      listenPosition = geolocator_lib.Geolocator.getPositionStream()
          .listen((geolocator_lib.Position position) async {
        print('=============================================...... tudo certo');
        print(position);

        if (position.latitude != myCurrentPosition!.latitude &&
            position.longitude != myCurrentPosition!.longitude) {
          setMarker(LatLng(position.latitude, position.longitude));
          print(
              '=============================================...... MUDOU A POSIÇÃO');
          setmyCurrentPosition(LatLng(position.latitude, position.longitude));

          final GoogleMapController controller =
              await _googleMapsControllerMobX.mobXController.future;

          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: myCurrentPosition!, zoom: 20, bearing: -85, tilt: 50),
            ),
          );
          _googleMapsControllerMobX
              .setMyCurrentPosition(); //para renderizar o marker no mapa
        }
      });
    }
  }

  @action
  Future<geolocator_lib.Position> determinePosition() async {
    bool serviceEnabled;
    geolocator_lib.LocationPermission permission;

    serviceEnabled = await geolocator_lib.Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await geolocator_lib.Geolocator.checkPermission();
    if (permission == geolocator_lib.LocationPermission.denied) {
      permission = await geolocator_lib.Geolocator.requestPermission();
      if (permission == geolocator_lib.LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == geolocator_lib.LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await geolocator_lib.Geolocator.getCurrentPosition();
  }

  @action
  Future setSourceAndDestinationIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/placeholder.png');
  }
}
