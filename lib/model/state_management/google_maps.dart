import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:maps_pilote/controller/repository/google_maps_repository.dart';
import 'package:maps_pilote/controller/repository/open_routes_service_repository.dart';
import 'package:maps_pilote/model/state_management/open_routes_services_mobx.dart';
import 'package:maps_pilote/model/state_management/polyline_points_mobx.dart';
import 'package:mobx/mobx.dart';

import 'geolocator_controller.dart';
part 'google_maps.g.dart';

OpenRouteServicesMobx _openRouteServicesMobx = GetIt.I<OpenRouteServicesMobx>();
GeoLocatorController _geoLocatorController = GetIt.I<GeoLocatorController>();
PolyLinePointsMobx _polyLinePointsMobx = GetIt.I<PolyLinePointsMobx>();
GoogleMapsRepository _googleMapsRepository = GoogleMapsRepository();
OpenRoutesServiceRepository _openRoutesServiceRepository =
    OpenRoutesServiceRepository();

@lazySingleton
class GoogleMapsControllerMobX = _GoogleMapsControllerMobXBase
    with _$GoogleMapsControllerMobX;

abstract class _GoogleMapsControllerMobXBase with Store {
  _GoogleMapsControllerMobXBase() {
    autorun((_) {});
  }

  @observable
  Completer<GoogleMapController> mobXController = Completer();

  @observable
  LatLng myCurrentPosition =
      const LatLng(-20.350894458754205, -40.39439348656955);

  @observable
  LatLng? boundNortheast;

  @action
  void setBoundNortheast(LatLng value) {
    boundNortheast = value;
  }

  @observable
  LatLng? boundSouthwest;

  @action
  void setBoundSouthwest(LatLng value) {
    boundSouthwest = value;
  }

  @observable
  LatLngBounds? bounds;

  @action
  void setBounds(LatLngBounds value) {
    bounds = value;
  }

  @action
  Future setMyCurrentPosition() async {
    await _geoLocatorController.getMyPosition().then((value) {
      myCurrentPosition = LatLng(value.latitude, value.longitude);
    });

    final GoogleMapController controller = await mobXController.future;

    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: myCurrentPosition, zoom: 18),
      ),
    );

    controller.dispose();
  }

  @observable
  double zoom = 15;

  @observable
  String? codePolyLine;

  @action
  void setCodePolyLine(String value) {
    codePolyLine = value;
  }

  @action
  Future centerRoute() async {
    GoogleMapController controller = await mobXController.future;
    controller.animateCamera(CameraUpdate.newLatLngBounds(
        _openRouteServicesMobx.bounds!, 25)); // google maps bounds
  }

  @action
  Future getRoutes() async {
    await _openRoutesServiceRepository
        .openRoutesServiceDirections(0, 0, 0, 0)
        .then((value) {
      _openRouteServicesMobx.setPolylinesCoordinates(value);
    });

    // await _googleMapsRepository.googleDirections(10, 10).then((value) {
    //   var codePolyLine = value['overviewpolyline'];
    //   setCodePolyLine(codePolyLine);
    //   _polyLinePointsMobx.decodePolyLines(codePolyLine!);

    //   setBoundNortheast(LatLng(value['bounds']['northeast']['lat'],
    //       value['bounds']['northeast']['lng']));
    //   setBoundSouthwest(LatLng(value['bounds']['southwest']['lat'],
    //       value['bounds']['southwest']['lng']));

    //   setBounds(
    //       LatLngBounds(northeast: boundNortheast!, southwest: boundSouthwest!));
    // });

    await setMyCurrentPosition();
    await centerRoute();
  }
}
