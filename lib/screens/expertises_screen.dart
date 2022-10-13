import 'package:flutter/material.dart';
import 'package:sidimisoft/widgets/widgets.dart';
import 'package:sidimisoft/screens/activity_screen.dart';
import 'package:sidimisoft/models/activity_model.dart';
import 'package:sidimisoft/screens/activity_details_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExpertisesScreen extends StatelessWidget {

  const ExpertisesScreen({ Key? key }) : super(key: key);
  static const routeName = '/expertises';

   @override
   Widget build(BuildContext context) {
     List<Activity> activities = Activity.activities;
     double width = MediaQuery.of(context).size.width;
       return SingleChildScrollView(
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          CustomHeader(title : 'Expertises IT'),
          _ExpertisesMasonryGrid(width : width,activities: activities)
          ],
      ),
     );
  }
}

class _ExpertisesMasonryGrid extends StatelessWidget {
  const _ExpertisesMasonryGrid({Key? key,this.masonryHeights= const [200,250,300], required this.activities,required this.width}) : super(key: key);
  final List<Activity> activities;
  final List<double> masonryHeights;
  final double width;
  @override
  Widget build(BuildContext context) {
    return  MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        itemCount: 9,
        crossAxisCount: 2,
        mainAxisSpacing:10,
        crossAxisSpacing:10,
        itemBuilder: (context, index) {
          Activity activity = activities[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ActivityDetailsScreen(
                  activity: activity,
                ),),
              );
            },
            child: Column(children: [
              Hero(
                tag : '${activity.id}_${activity.title}',
                child : Container(
                  height: masonryHeights[index % 3],
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(activity.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),

                ),
              ),
              const SizedBox(height: 10),
              Text(activity.title,
                  maxLines : 3,
                  style  : Theme.of(context).textTheme.bodyText2!.copyWith(
                    color : Colors.black,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ]),
          );
        });
  }
}
