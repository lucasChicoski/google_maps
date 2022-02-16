import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_pilote/model/state_management/google_maps.dart';
import 'package:maps_pilote/model/state_management/open_routes_services_mobx.dart';
import 'package:maps_pilote/model/state_management/polyline_points_mobx.dart';

GoogleMapsControllerMobX _googleMapsController =
    GetIt.I<GoogleMapsControllerMobX>();
PolyLinePointsMobx _polyLinePointsMobx = GetIt.I<PolyLinePointsMobx>();
OpenRouteServicesMobx _openRouteServicesMobx = GetIt.I<OpenRouteServicesMobx>();

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({Key? key}) : super(key: key);

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Observer(builder: (_) {
          return GoogleMap(
            onMapCreated: ((GoogleMapController controller) {
              _googleMapsController.mobXController.complete(controller);
            }),
            polylines: _openRouteServicesMobx
                .polyLines, //_polyLinePointsMobx.polyLines
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: _googleMapsController.myCurrentPosition,
              zoom: _googleMapsController.zoom,
            ),
          );
        }),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: _googleMapsController.centerRoute,
                  child: const Icon(Icons.navigation_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: _googleMapsController.setMyCurrentPosition,
                  child: const Icon(Icons.my_location_rounded),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: _googleMapsController.getRoutes,
                  child: const Icon(Icons.sports_score_outlined),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
