import 'package:flutter/material.dart';
import 'package:aahashop/widgets/custom_text.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context ) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
          children: [
            CustomText(text: 'Newsletter',weight: FontWeight.w700, size: 28, color: Colors.black,),
            SizedBox(height: 10,),
            CustomText(text: 'Subscribe to get information about new products and coupons',weight: FontWeight.w500, size: 20, color: Colors.black,)
          ]
      ),
    );
  }

}