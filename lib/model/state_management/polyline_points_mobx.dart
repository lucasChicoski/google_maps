import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'polyline_points_mobx.g.dart';

PolylinePoints _polylinePoints = PolylinePoints();

@singleton
class PolyLinePointsMobx = _PolyLinePointsMobxBase with _$PolyLinePointsMobx;

abstract class _PolyLinePointsMobxBase with Store {
  @action
  List<PointLatLng> decodePolyLines(String value) {
    List<PointLatLng> result = _polylinePoints.decodePolyline(value);

    for (var point in result) {
      polylineCoordinates.add(LatLng(point.latitude, point.longitude));
    }

    setPolyLines();

    return result;
  }

  @observable
  Set<Polyline> polyLines = {};

  ObservableList<LatLng> polylineCoordinates = ObservableList();

  //List<LatLng> polylineCoordinates = [];

  @action
  void setPolyLines() {
    Polyline polyline = Polyline(
        polylineId: const PolylineId("poly"),
        color: const Color.fromARGB(255, 40, 122, 198),
        points: polylineCoordinates);

    polyLines.add(polyline);
  }
}
