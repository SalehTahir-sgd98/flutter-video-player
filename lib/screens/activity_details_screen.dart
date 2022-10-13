import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sidimisoft/models/models.dart';
import 'package:sidimisoft/widgets/widgets.dart';

class ActivityDetailsScreen extends StatelessWidget {
  const ActivityDetailsScreen({Key? key, required this.activity})
      : super(key: key);

  final Activity activity;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _ActivityImage(activity: activity),
      _ActivityInformations(activity: activity),
    ]);
  }
}

class _ActivityInformations extends StatelessWidget {
  const _ActivityInformations({Key? key, required this.activity})
      : super(key: key);

  final Activity activity;
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
                activity.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              RatingBar.builder(
                initialRating: activity.rating,
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
                'Qui sommes-nous ?',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                activity.description,
                textAlign: TextAlign.justify,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontWeight: FontWeight.bold,fontSize: 15),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${activity.price}',
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

class _ActivityImage extends StatelessWidget {
  const _ActivityImage({Key? key, required this.activity}) : super(key: key);
  final Activity activity;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClippedContainer(height: 425),
        Hero(
          tag: '${activity.id}_${activity.title}',
          child: ClippedContainer(imageUrl: activity.imageUrl),
        ),
      ],
    );
  }
}
