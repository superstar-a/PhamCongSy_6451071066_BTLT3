import 'package:flutter/material.dart';
import'../model/tap_message.dart';
import'../utill/snackbar_util.dart';

class TapBox extends StatelessWidget{
  const TapBox({super.key});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        SnackBarUtil.show(context, TapMessage.snackBarText);
      },
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
      
      child: const Center(
        child: Text(
          TapMessage.boxLabel,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      )
      ),
    );
    }
  }
