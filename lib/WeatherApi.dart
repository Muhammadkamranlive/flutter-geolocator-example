import 'package:geolocator/geolocator.dart';


class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;



      print("Longitude is :,$longitude and  Latitude is : $latitude");

    } catch (e) {
      getCurrentLocation();
      print(e);
    }
  }
  Future<void> check()async{


    try {

      // checking the permission
      LocationPermission permission = await Geolocator.checkPermission();
      if(permission==LocationPermission.denied){
        LocationPermission permission = await Geolocator.requestPermission();
        print(permission);

      }else{
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;
      }


      print("Longitude is :,$longitude and  Latitude is : $latitude");

    } catch (e) {
      check();
      print(e);
    }
  }

}