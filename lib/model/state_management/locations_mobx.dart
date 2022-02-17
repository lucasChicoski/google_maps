import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:maps_pilote/model/state_management/google_maps.dart';
import 'package:mobx/mobx.dart';
part 'locations_mobx.g.dart';

GoogleMapsControllerMobX _googleMapsControllerMobX =
    GetIt.I<GoogleMapsControllerMobX>();

@singleton
class LocationMobx = _LocationMobxBase with _$LocationMobx;

abstract class _LocationMobxBase with Store {
  @observable
  LocationData? currentLocation;

  @observable
  Location? location;

  @observable
  Set<Marker> markers = {};

  @observable
  BitmapDescriptor? sourceIcon;

  @action
  void currentPositionListener() {
    location = Location();
    location!.onLocationChanged.listen((LocationData locationData) {
      currentLocation = locationData;
      updatePinOnMap();
    });
  }

  @action
  Future updatePinOnMap() async {
    CameraPosition cPosition = CameraPosition(
      zoom: 15,
      target: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
    );

    final GoogleMapController controller =
        await _googleMapsControllerMobX.mobXController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cPosition));

    var pinPosition =
        LatLng(currentLocation!.latitude!, currentLocation!.longitude!);

    markers.removeWhere((m) => m.markerId.value == "sourcePin");
    markers.add(Marker(
        markerId: const MarkerId("sourcePin"),
        position: pinPosition, // updated position
        icon: sourceIcon!));
  }

  @action
  void showPinsOnMap() {
    currentLocation;
    var pinPosition =
        LatLng(currentLocation!.latitude!, currentLocation!.longitude!);

    markers.add(Marker(
        markerId: const MarkerId('sourcePin'),
        position: pinPosition,
        icon: sourceIcon!));
  }

  @action
  Future setSourceAndDestinationIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5),
        'assets/location-pin.png');
  }
}
