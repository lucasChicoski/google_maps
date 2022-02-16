import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class IOpenRoutesService {
  Future openRoutesServiceDirections(
      double latOrigin, double lngOrigin, double latDestiny, double lngDestiny);
}
