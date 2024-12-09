import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWithCustomInfoWindows extends StatefulWidget {
  const MapWithCustomInfoWindows({super.key});

  @override
  State<MapWithCustomInfoWindows> createState() =>
      _MapWithCustomInfoWindowsState();
}

class _MapWithCustomInfoWindowsState extends State<MapWithCustomInfoWindows> {
  LatLng myCurrentLocation = const LatLng(27.7172, 85.3240);
  BitmapDescriptor customIcon = BitmapDescriptor.defaultMarker;
  List<Marker> marker = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FloatingActionButton.extended(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          // now, we need is that if we click on the map icon, open the bottomsheet and show
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.white,
                  height: size.height * 0.77,
                  width: size.width,
                  child: Stack(
                    children: [
                      SizedBox(
                          height: size.height * 0.77,
                          child: GoogleMap(
                            initialCameraPosition:
                                CameraPosition(target: myCurrentLocation),
                            onMapCreated: (GoogleMapController controller) {},
                            onTap: (argument) {},
                            onCameraMove: (position) {},
                            markers: marker.toSet(),
                          ))
                    ],
                  ),
                );
              });
        },
        label: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(30)),
          child: const Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.map_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
        ));
  }
}
