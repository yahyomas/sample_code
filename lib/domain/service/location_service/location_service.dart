import 'dart:async';

import 'package:geolocator/geolocator.dart' as geo;
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';


@Injectable()
class LocationService {

  PermissionStatus _locationPermission = PermissionStatus.granted;

  PermissionStatus get locationPermission => _locationPermission;

  final Location _location = Location();


  Future<void> requestPermission() async {
    _locationPermission = await _location.requestPermission();
  }

  Future<void> requestService() async {
    final serviceEnabled = await _location.requestService();

    if (!serviceEnabled) {
      _locationPermission = PermissionStatus.denied;
    }
  }

  Future<geo.Position?> determinePosition() async {


    await requestPermission();


      if (_locationPermission == PermissionStatus.granted ||
          _locationPermission == PermissionStatus.grantedLimited) {
        var serviceEnabled = await _location.serviceEnabled();

        if (!serviceEnabled) {
          _locationPermission = PermissionStatus.denied;
          return null;
        }
        try {
          final position = await geo.Geolocator.getCurrentPosition(
            desiredAccuracy: geo.LocationAccuracy.best,
            timeLimit: const Duration(seconds: 100),
          );
          return position;
        } catch (e) {
          if (e is TimeoutException) {
            return await determinePosition();
          }
          if (e is geo.LocationServiceDisabledException) {
            _locationPermission = PermissionStatus.denied;
          }
        }

    }
    return null;
  }
}
