import 'package:dinbog/application/auth/auth_bloc.dart';
import 'package:dinbog/presentation/core/constants.dart';
import 'package:dinbog/presentation/wall/core/components/bottom_navigation_bar_home.dart';
import 'package:dinbog/presentation/wall/widgets/individual_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WallOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("dinbog"),
            leading: IconButton(
              icon: Icon(
                Feather.camera,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {},
            ),
          ),
          body: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return _buidPostItem();
              }),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                ),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {},
                ),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Container(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.work,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Container(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buidPostItem() {
    return IndividualPost();
  }
}
