import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    Key? key,
    required this.width,
    required this.height,
    required this.navigator,
  }) : super(key: key);

  final double height;
  final double width;
  final GlobalKey<NavigatorState> navigator;
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  List<Map> menu = [
    {'title': 'Sidimi', 'routeName': '/activities'},
    {'title': 'Services', 'routeName': '/services'},
    {'title': 'Produits', 'routeName': '/services'},
    {'title': 'Expertises', 'routeName': '/activities'},
  ];

  int sideBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width * 0.2,
        color: const Color(0xFF211955),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: widget.height * 0.5),
          ListView.builder(
            shrinkWrap: true,
            itemCount: menu.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return RotatedBox(
                quarterTurns: 3,
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(80, 50),
                  ),

                  onPressed: () {
                    setState(() {
                      sideBarIndex = index;
                    });

                    //navigate to the new screen
                    widget.navigator.currentState!.pushNamed(
                      menu[index]['routeName'],
                    );
                  },
                  // style: TextButton.styleFrom(minimumSize: const Size(100, 50),),
                  child: Text(
                    menu[index]['title'],
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontWeight: (index == sideBarIndex)
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: (index == sideBarIndex)
                              ? Colors.white
                              : Colors.white.withAlpha(200),
                          letterSpacing: 2,
                        ),
                  ),
                ),
              );
            },
          ),
        ]));
  }
}
