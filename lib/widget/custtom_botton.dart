import 'package:flutter/material.dart';

class CusttomBotton extends StatelessWidget {
  const CusttomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(child: Text('Add ',style: TextStyle(fontSize: 25,),),),
    );
  }
}