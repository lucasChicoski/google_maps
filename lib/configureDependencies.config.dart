// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'model/state_management/geolocator_controller.dart' as _i3;
import 'model/state_management/google_maps.dart' as _i4;
import 'model/state_management/open_routes_services_mobx.dart' as _i5;
import 'model/state_management/polyline_points_mobx.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.GeoLocatorController>(_i3.GeoLocatorController());
  gh.lazySingleton<_i4.GoogleMapsControllerMobX>(
      () => _i4.GoogleMapsControllerMobX());
  gh.singleton<_i5.OpenRouteServicesMobx>(_i5.OpenRouteServicesMobx());
  gh.singleton<_i6.PolyLinePointsMobx>(_i6.PolyLinePointsMobx());
  return get;
}
