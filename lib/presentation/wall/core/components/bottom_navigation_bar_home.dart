import 'package:dinbog/presentation/core/constants.dart';
import 'package:dinbog/presentation/wall/core/styles/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarHome extends StatelessWidget {
  final int index;
  final Function function;

  BottomNavigationBarHome({this.index, this.function});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) {
        function(index);
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Container()),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Container()),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () {},
            ),
            title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none), title: Container()),
        BottomNavigationBarItem(icon: Icon(Icons.work), title: Container()),
      ],
    );
  }

  // void _modalPost(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) => Container(
  //       color: Theme.of(context).appBarTheme.color,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: <Widget>[
  //           SizedBox(
  //             height: 15.0,
  //           ),
  //           Text('What would you like to do?',
  //               style: TextStyle(color: colorAccent)),
  //           SizedBox(
  //             height: 15.0,
  //           ),
  //           _modalButtons(context, image["create_post"], 'Create post', () {}),
  //           SizedBox(
  //             height: 15.0,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _modalButtons(
  //     BuildContext context, String image, String title, Function function) {
  //   return FlatButton(
  //     onPressed: () {},
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Image(
  //           image: AssetImage(image),
  //           width: 20,
  //           height: 20,
  //           color: Theme.of(context).iconTheme.color,
  //         ),
  //         SizedBox(
  //           width: 20.0,
  //         ),
  //         Text(
  //           title,
  //           style: Theme.of(context).textTheme.bodyText1,
  //         )
  //       ],
  //     ),
  //   );
  // }
}
