import 'package:flutter/material.dart';
import 'package:sidimisoft/widgets/widgets.dart';

class ProduitsScreen extends StatelessWidget {

  const ProduitsScreen({ Key? key }) : super(key: key);
  static const routeName  = '/produits';
   @override
   Widget build(BuildContext context) {
       return SingleChildScrollView(
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          CustomHeader(title : 'Produits Logiciels'),
          ],
      ),
     );
  }
}