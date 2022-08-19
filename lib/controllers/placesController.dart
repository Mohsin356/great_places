
import 'package:get/get.dart';
import 'package:great_places/models/place.dart';
class PlaceController extends GetxController{
  final _items=<Place>[].obs;

  List<Place> get items{
    return _items;
  }

}