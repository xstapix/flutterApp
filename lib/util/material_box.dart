import 'package:flutter/material.dart';

import '../util/material_info.dart';

class MaterialBox extends StatelessWidget {
  final objMaterial;
  
  const MaterialBox({
    super.key, 
    required this.objMaterial
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      constraints: BoxConstraints(maxHeight: 227),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 51, 51, 51),
        borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MaterialInfo(
              objMaterial: objMaterial
            ),
            const Spacer(),
            Container(
              height: 50,
              margin: EdgeInsetsDirectional.only(bottom: 8),
              child: Text(objMaterial['title'], style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
            ),
            Container(
              height: 36,
              child: Text(
                objMaterial['preview_text'], 
                style: TextStyle(color: Colors.white, fontSize: 14,),
              )
            )
          ],
        )
      )
    );
  }
}