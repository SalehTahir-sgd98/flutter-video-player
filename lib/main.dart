import 'package:flutter/material.dart';
import 'screens/screens.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sidimisoft',
        debugShowCheckedModeBanner: false,
        initialRoute: '/activities',
        routes: {
          ActivitiesScreen.routeName: (context) => const ActivitiesScreen(),
          ServicesScreen.routeName: (context) => const ServicesScreen(),
          ProduitsScreen.routeName: (context) => const ProduitsScreen(),
          ExpertisesScreen.routeName: (context) => const ExpertisesScreen(),
        },
        builder: (context, child) {
          return _SidimiApp(
            navigator: (child!.key as GlobalKey<NavigatorState>),
            child: child,
          );
        });
  }
}

class _SidimiApp extends StatefulWidget {
  const _SidimiApp({Key? key, required this.navigator, required this.child})
      : super(key: key);

  final GlobalKey<NavigatorState> navigator;
  final Widget child;

  @override
  State<_SidimiApp> createState() => __SidimiAppState();
}

class __SidimiAppState extends State<_SidimiApp> {
  bool isOnboarding = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF5EDDC),
      body: isOnboarding
          ? _buildOnboarding(context)
          : Row(
              children: [
                SideBar(
                  width: width,
                  height: height,
                  navigator: widget.navigator,
                ),
                Expanded(
                  child: widget.child,
                ),
              ],
            ),
    );
  }

  Container _buildOnboarding(context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cf4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.45,
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Des Services digitaux et Produits logiciels  ',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOnboarding = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  padding: EdgeInsets.zero,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Startup Sidimisoft',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
