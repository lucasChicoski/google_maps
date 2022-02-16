import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'open_routes_services_mobx.g.dart';

@singleton
class OpenRouteServicesMobx = _OpenRouteServicesMobxBase
    with _$OpenRouteServicesMobx;

abstract class _OpenRouteServicesMobxBase with Store {
  @action
  void setPolylinesCoordinates(values) {
    for (var coordinates in values['listcoordinates']) {
      polylineCoordinates.add(LatLng(coordinates[1], coordinates[0]));
    }
    LatLng boundNortheast = LatLng(values['bounds'][3], values['bounds'][2]);
    LatLng boundSouthwest = LatLng(values['bounds'][1], values['bounds'][0]);

   
    print('object');
    setBounds(
        LatLngBounds(northeast: boundNortheast, southwest: boundSouthwest));

    setPolyLines();
  }

  @observable
  LatLngBounds? bounds;

  @action
  void setBounds(LatLngBounds value) {
    bounds = value;
  }

  @observable
  Set<Polyline> polyLines = {};

  ObservableList<LatLng> polylineCoordinates = ObservableList();

  @action
  void setPolyLines() {
    Polyline polyline = Polyline(
        polylineId: const PolylineId("poly"),
        color: const Color.fromARGB(255, 40, 122, 198),
        points: polylineCoordinates);

    polyLines.add(polyline);
  }
}
