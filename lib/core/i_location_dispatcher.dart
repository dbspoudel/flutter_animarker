import 'package:flutter_animarker/core/i_lat_lng.dart';

typedef void OnNewMarkerPosition(ILatLng latLng);

abstract class ILocationDispatcher {
  final double threshold;

  bool get isEmpty;

  bool get isNotEmpty;

  ILatLng get last;

  int get length;

  List<ILatLng> get values;

  ILocationDispatcher({this.threshold = 1.5});

  ILatLng next();

  void push(ILatLng latLng);

  void dispose();

  ILatLng goTo(int index);
}
