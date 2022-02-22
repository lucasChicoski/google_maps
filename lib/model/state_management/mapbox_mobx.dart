import 'dart:async';

import 'package:flutter_mapbox_navigation/library.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'mapbox_mobx.g.dart';

@singleton
class MapBoxMobx = _MapBoxMobxBase with _$MapBoxMobx;

abstract class _MapBoxMobxBase with Store {
  @observable
  MapBoxNavigation? directions;

  @observable
  MapBoxOptions? options;

  @observable
  bool isMultipleStop = false;

  @observable
  double? distanceRemaining, durationRemaining;

  @observable
  MapBoxNavigationViewController? controller;

  @observable
  bool routeBuilt = false;

  @observable
  bool isNavigating = false;

  @observable
  String platformVersion = 'Unknown';

  @observable
  String instruction = "";

  @observable
  RouteProgressEvent? arrived;

  @observable
  bool simulateRoute = false;

  @action
  Future startNavigate() async {


    await directions!.startNavigation(
      wayPoints: [
        WayPoint(
            name: 'inicio',
            latitude: -20.350887540258448,
            longitude: -40.394391130769435),
        WayPoint(
            name: 'fim',
            latitude: -20.344009921291207,
            longitude: -40.39329432456535),
      ],
      options: MapBoxOptions(
        mode: MapBoxNavigationMode.drivingWithTraffic,
        simulateRoute: simulateRoute,
        language: "pt-br",
        units: VoiceUnits.metric,
        zoom: 22,
      ),
    );
  }

  @action
  Future<void> onRouteEvent(e) async {
    distanceRemaining = await directions!.distanceRemaining;
    durationRemaining = await directions!.durationRemaining;

    switch (e.eventType) {
      case MapBoxEvent.progress_change:
        var progressEvent = e.data as RouteProgressEvent;
        arrived = progressEvent.arrived as RouteProgressEvent?;
        if (progressEvent.currentStepInstruction != null) {
          instruction = progressEvent.currentStepInstruction!;
        }
        break;
      case MapBoxEvent.route_building:
      case MapBoxEvent.route_built:
        routeBuilt = true;
        break;
      case MapBoxEvent.route_build_failed:
        routeBuilt = false;
        break;
      case MapBoxEvent.navigation_running:
        isNavigating = true;
        break;
      case MapBoxEvent.on_arrival:
        arrived = true as RouteProgressEvent?;
        if (!isMultipleStop) {
          await Future.delayed(Duration(seconds: 3));
          await controller!.finishNavigation();
        } else {}
        break;
      case MapBoxEvent.navigation_finished:
      case MapBoxEvent.navigation_cancelled:
        routeBuilt = false;
        isNavigating = false;
        break;
      default:
        break;
    }
    //refresh UI
    //setState(() {});
  }
}
