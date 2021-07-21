import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<Position> getCurrentLocation() async {
    try {
      // LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;

      return position;
    } catch (e) {
      print(e);
    }
  }
}
