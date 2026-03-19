import 'package:flutter/material.dart';
import '../util/snackbar_util.dart';

class LongPressCard extends StatelessWidget{
  const LongPressCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: (){
        SnackbarUtil.show(context, 'Long press detected');
      },
      child: Card(
        elevation :8,
        child : Padding (

        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),
      child: Text(
        'Press and Hold me',
        style: TextStyle(fontSize: 20),
      ),
        )
      ),
    );
  }
}