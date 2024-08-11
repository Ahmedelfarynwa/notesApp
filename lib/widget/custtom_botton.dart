import 'package:flutter/material.dart';

class CusttomBotton extends StatelessWidget {
  const CusttomBotton({super.key, this.onTap,  this.isLoading=false});
  final void Function()? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(35)),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(backgroundColor:Colors.green,)
              : Text(
                  'Add ',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
        ),
      ),
    );
  }
}
