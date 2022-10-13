import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {

  const CustomHeader({ Key? key, required this.title }) : super(key: key);
  final String title;
   @override
   Widget build(BuildContext context) {
       return Padding(
            padding: const EdgeInsets.all(10.0),
            child:  Column(
              children: [
                Text(title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text('Solutions Informatiques digitales, modernes et intégrées',
          style: Theme.of(context).textTheme.bodyText2,
          ),],
          ),
          );
  }
}
