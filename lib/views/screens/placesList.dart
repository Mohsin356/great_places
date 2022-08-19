
import 'package:flutter/material.dart';
import 'package:great_places/utils/colors.dart';
import 'package:great_places/controllers/placesController.dart';
import 'package:get/get.dart';
import 'package:great_places/views/screens/addPlace.dart';

class PlacesList extends StatelessWidget {
   PlacesList({Key? key}) : super(key: key);
  final _placeController= Get.put(PlaceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Great Places",style: TextStyle(color: AppColors.appBarTxt),),
        backgroundColor: AppColors.appBarClr,
        actions: [
          IconButton(onPressed: (){
            Get.to(()=>AddPlace());
          }, icon: const Icon(Icons.add,))
        ],
      ),
    );
  }
}
