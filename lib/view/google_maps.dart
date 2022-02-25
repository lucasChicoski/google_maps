import 'package:flutter/material.dart';
import 'package:flutter_mapbox_navigation/library.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_pilote/model/state_management/geolocator_controller.dart';
import 'package:maps_pilote/model/state_management/google_maps.dart';
import 'package:maps_pilote/model/state_management/mapbox_mobx.dart';
import 'package:maps_pilote/model/state_management/open_routes_services_mobx.dart';
import 'package:maps_pilote/model/state_management/polyline_points_mobx.dart';
import 'package:maps_pilote/model/state_management/widgets_google_maps_screen_mobx.dart';
import 'package:mobx/mobx.dart';

GoogleMapsControllerMobX _googleMapsController =
    GetIt.I<GoogleMapsControllerMobX>();
PolyLinePointsMobx _polyLinePointsMobx = GetIt.I<PolyLinePointsMobx>();
OpenRouteServicesMobx _openRouteServicesMobx = GetIt.I<OpenRouteServicesMobx>();
WidgetsGoogleMapsScreenMobx _widgetsGoogleMapsScreenMobx =
    GetIt.I<WidgetsGoogleMapsScreenMobx>();
GeoLocatorController _geoLocatorController = GetIt.I<GeoLocatorController>();
MapBoxMobx _mapBoxMobx = GetIt.I<MapBoxMobx>();

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({Key? key}) : super(key: key);

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  final List<ReactionDisposer> _dispose = [];

  @override
  void initState() {
    _mapBoxMobx.directions =
        MapBoxNavigation(onRouteEvent: _mapBoxMobx.onRouteEvent);
    _geoLocatorController.setMarker(_googleMapsController.myCurrentPosition);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _dispose.add(reaction((_) => _widgetsGoogleMapsScreenMobx.showSnackBar,
        (bool showSnackBar) {
      if (showSnackBar) {
        mySnackBar();
      } else {
        mySnackBar();
      }
    }));

    _dispose.add(
      reaction(
        ((_) => _widgetsGoogleMapsScreenMobx.switchButton),
        (bool switchButton) {
          if (switchButton) {
            _geoLocatorController.listenerPosition();
          } else {
            _geoLocatorController.listenPosition!.cancel();
          }
        },
      ),
    );
    super.didChangeDependencies();
  }

  void mySnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Você precisa de definir uma rota !")));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).padding,
      child: Stack(
        children: [
          Observer(builder: (_) {
            //Configuração Google Maps
            return GoogleMap( //Widget
              onMapCreated: ((GoogleMapController controller) {
                _googleMapsController.mobXController.complete(controller); // Controlador do mapa
              }), //Criação do mapa
              polylines: _openRouteServicesMobx //Lista de Polylines
                  .polyLines, //_polyLinePointsMobx.polyLines
              markers: _geoLocatorController.markers,
              myLocationEnabled: _widgetsGoogleMapsScreenMobx.showMyPointer,
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                target: _googleMapsController.myCurrentPosition,
                zoom: _googleMapsController.zoom,
              ),
            );
          }),
          Observer(builder: (_) {
            return Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Switch(
                          value: _widgetsGoogleMapsScreenMobx.switchButton,
                          onChanged:
                              _widgetsGoogleMapsScreenMobx.setSwitchButton,
                        ),
                        const Text(
                          'Ouvir minha posição',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const VerticalDivider(
                          endIndent: 5,
                          thickness: 2.5,
                          indent: 5,
                        ),
                        Switch(
                            value: _widgetsGoogleMapsScreenMobx.showMyPointer,
                            onChanged:
                                _widgetsGoogleMapsScreenMobx.setshowMyPointer),
                        const Text(
                          'Mostrar meu ponteiro',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ));
          }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: _googleMapsController.centerRoute,
                    child: const Icon(Icons.navigation_outlined),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.yellow,
                    onPressed: _googleMapsController.setMyCurrentPosition,
                    child: const Icon(
                      Icons.my_location_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: _googleMapsController.getRoutes,
                    child: const Icon(Icons.sports_score_outlined),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.green,
                    onPressed: _mapBoxMobx.startNavigate,
                    child:
                        const Icon(Icons.airline_seat_recline_normal_rounded),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
