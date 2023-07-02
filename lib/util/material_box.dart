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
              margin: EdgeInsetsDirectional.only(bottom: 8),
              child: Text(objMaterial['title'], style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),),
            ),
            Text(objMaterial['desc'], style: TextStyle(color: Colors.white, fontSize: 14,),)
          ],
        )
      )
    );
  }
}