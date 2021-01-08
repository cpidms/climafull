import 'package:location/location.dart';

class Position {
  double latitude;
  double longitude;

  Future<void> getCurrentPosition() async {
    try {
      LocationData position = await Location.instance.getLocation();
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}


