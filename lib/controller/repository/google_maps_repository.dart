import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:maps_pilote/controller/intefaces/google_inteface.dart';

Dio _dio = Dio();

class GoogleMapsRepository implements IGoogleApi {
  @override
  Future googleDirections(double latitude, double longitude) async { //,
    String url =
        'https://maps.googleapis.com/maps/api/directions/json?destination=-20.311849040825184,-40.28914659150335&origin=-20.350898436655868,-40.39426120487334&key=AIzaSyBUNxbPhyGA7m9Y2x3MLp_SJYUFSshCHHU';

    try {
      final response = await _dio.get(url);
      final bounds = response.data['routes'][0]["bounds"];
      final overviewpolyline =
          response.data['routes'][0]["overview_polyline"]["points"];

      return {
        "overviewpolyline": overviewpolyline,
        "bounds": bounds,
      };
    } catch (e) {
      print(e);
    }
  }
}
