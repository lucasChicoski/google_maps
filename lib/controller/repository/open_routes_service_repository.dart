import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:maps_pilote/controller/intefaces/open_routes_service_interface.dart';

Dio _dio = Dio();

class OpenRoutesServiceRepository implements IOpenRoutesService {
  @override
  Future openRoutesServiceDirections(double latOrigin, double lngOrigin,
      double latDestiny, double lngDestiny) async {
    //sequencia - longitude - latitude
    String url =
        'https://api.openrouteservice.org/v2/directions/driving-car?api_key=5b3ce3597851110001cf6248e36d09a9ff984da583b56df009b16c5c&start=-40.394023048240165,-20.35106118008441&end=-40.2891825697488,-20.312029756641685';

    try {
      final response = await _dio.get(url);
      final decodeResponse = jsonDecode(response.data);

      final listCoordinates =
          decodeResponse['features'][0]['geometry']['coordinates'];
      final bounds = decodeResponse['features'][0]['bbox'];

      print('object');
      return Future.value({
        "listcoordinates": listCoordinates,
        "bounds": bounds,
      });
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
