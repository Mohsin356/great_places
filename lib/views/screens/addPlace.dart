
import 'package:flutter/material.dart';
import 'package:great_places/utils/colors.dart';
import 'package:great_places/views/widgets/imageInput.dart';
class AddPlace extends StatefulWidget {
   const AddPlace({Key? key}) : super(key: key);

  @override
  State<AddPlace> createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  final _titleController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a New Place",style: TextStyle(color: AppColors.appBarTxt),),
        backgroundColor: AppColors.appBarClr,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children:  [
                  TextField(
                    decoration: const InputDecoration(labelText: "Title"),
                    controller: _titleController,
                  ),
                  const SizedBox(height: 20,),
                  const ImageInput(),

                ],
              ),
            ),
          )),
          ElevatedButton.icon(onPressed: (){},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(AppColors.btnTxt),
                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.btnClr),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,))
                  ),
              icon: const Icon(Icons.add),
              label: const Text("Add Place"),)
          // ElevatedButton(onPressed: (){},
          //     child:Text("+Add Place"),)
        ],
      ),
    );
  }
}
