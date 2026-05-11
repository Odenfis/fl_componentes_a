import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {

  final String imageURL;
  final String? descripcion;


  const CustomCardType3({
    super.key, required this.imageURL, this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(30),
      ),     
      child: Column(
        children: [
          /*Image(
            image: NetworkImage('https://elcomercio.pe/resizer/v2/6Y2EDIISGFGVFANEVDCR5LCG34.jpg?auth=f58b5c647a09717054d85bb8b9a6bc624bfcb14fe9c60b5246730ea6a513e2b0&width=1198&height=690&quality=75&smart=true')
            ),*/
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage(imageURL),
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),            
            ),
          if(descripcion != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(descripcion ?? 'Sin dato'),
          )        
        ],
      ),
    );
  }
}