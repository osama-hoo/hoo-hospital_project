import 'package:flutter/material.dart';
import 'package:web_smiley/dashborad/dashboard_center.dart';
import 'package:web_smiley/dashborad/dashboard_right.dart';
import 'package:web_smiley/dashborad/nav_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: NavBar(
            ),
          ),
          Expanded(
            flex: 9,
            child: DashBoardCenter(

            ),
          ),
          Expanded(
            flex: 3,
            child: DashBoardRight(

            ),
          ),
        ],
      ),
    );
  }
}
