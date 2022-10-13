import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sidimisoft/models/models.dart';
import 'package:sidimisoft/widgets/widgets.dart';

class ServicesDetailsScreen extends StatelessWidget {
  const ServicesDetailsScreen({Key? key, required this.service})
      : super(key: key);

  final Services service;
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      _ServicesImage(service: service),
      _ServicesInformations(service: service),
    ]);
  }
}

class _ServicesInformations extends StatelessWidget {
  const _ServicesInformations({Key? key, required this.service})
      : super(key: key);

  final Services service;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Text(
                service.nom,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              RatingBar.builder(
                initialRating: service.rating,
                minRating: 0,
                direction: Axis.horizontal,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
              const SizedBox(height: 10),
              Text(
                'A-propos',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                service.description,
                textAlign: TextAlign.justify,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${service.price}',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF211955),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Text('Devis',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
    
    );
  }
}

class _ServicesImage extends StatelessWidget {
  const _ServicesImage({Key? key, required this.service}) : super(key: key);
  final Services service;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClippedContainer(height: 425),
        Hero(
          tag: '${service.id}_${service.nom}',
          child: ClippedContainer(imageUrl: service.imageUrl),
        ),
      ],
    );
  }
}
