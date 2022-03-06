import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../utils/common_import.dart';

class GoogleMapWidget extends StatefulWidget {
  final LatLng location;

  const GoogleMapWidget({Key? key, required this.location}) : super(key: key);

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};
  bool offstage = true;

  @override
  void initState() {
    super.initState();
    ImageUtils.getBytesFromAsset(
            Assets.images.assetsImgCommonIcmaplocationcommon.path,
            (50 * (WidgetsBinding.instance?.window.devicePixelRatio ?? 3))
                .toInt())
        .then((markerIcon) {
      if (markerIcon != null) {
        final Marker marker = Marker(
          markerId: MarkerId(
              "${widget.location.latitude}${widget.location.longitude}"),
          icon: BitmapDescriptor.fromBytes(markerIcon),
          position: widget.location,
        );
        markers.add(marker);
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: offstage,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: widget.location,
          zoom: 15,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          setState(() {
            offstage = false;
          });
        },
        markers: markers,
      ),
    );
  }

// Future<void> _goToTheLake() async {
//   final GoogleMapController controller = await _controller.future;
//   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
// }
}
