import 'package:flutter/material.dart';
import 'package:kanban_studio/colors.dart';


class News extends StatelessWidget {
  
  
  final String text;
  final String imgUrl;

  const News({ required this.text, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Card(child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
             /* Text(title,
                style: TextStyle(fontSize: 24,),
               ),*/
              
              SizedBox(height: 10),
              Text(text,
              style: TextStyle(fontSize: 14,
                                color: textPrimary
                ),
              ),
              SizedBox(height: 10),
              Image.asset('assets/img/icon.jpg'),
              
            ]),

            
            ),

          elevation: 10, 
          shadowColor: const Color.fromARGB(255, 58, 58, 58),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
    ),
   
    );
  }
}
