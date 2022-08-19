
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:great_places/utils/colors.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            border:Border.all(width: 1,color: AppColors.boxBorder)
          ),
          alignment: Alignment.center,
          child: _storedImage!= null ?Image.file(_storedImage!,width: double.infinity,fit: BoxFit.cover,):
              const Text("No Image Chosen",textAlign: TextAlign.center,),
        ),
        Expanded(
            child: TextButton.icon(icon:const Icon(Icons.camera,color: AppColors.iconClr,),
                onPressed: (){},
                label: const Text("Add Image",style: TextStyle(color: AppColors.btnTxt),),
            ))
      ],
    );
  }
}
