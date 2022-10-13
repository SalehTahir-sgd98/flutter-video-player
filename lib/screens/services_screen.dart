import 'package:flutter/material.dart';
import 'package:sidimisoft/models/services_model.dart';
import 'package:sidimisoft/widgets/widgets.dart';
import 'package:sidimisoft/screens/services_details_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);
  static const routeName = '/services';
  @override
  Widget build(BuildContext context) {
    List<Services> services = Services.services;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomHeader(title: 'Services digitaux'),
          _ServicesMasonryGrid(width: width, services: services),
        ],
      ),
    );
  }
}

class _ServicesMasonryGrid extends StatelessWidget {
  const _ServicesMasonryGrid(
      {Key? key,
      this.masonryHeights = const [200, 250, 300],
      required this.services,
      required this.width})
      : super(key: key);
  final List<Services> services;
  final List<double> masonryHeights;
  final double width;
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        itemCount: 5,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) {
          Services service = services[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ServicesDetailsScreen(
                    service: service,
                  ),
                ),
              );
            },
            child: Column(children: [
              Hero(
                tag: '${service.id}_${service.nom}',
                child: Container(
                  height: masonryHeights[index % 3],
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(service.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(service.nom,
                  maxLines: 3,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
            ]),
          );
        });
  }
}
