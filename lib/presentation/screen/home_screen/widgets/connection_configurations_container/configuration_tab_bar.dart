import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/emitter_tab_view.dart';

class ConfigurationTabBar extends StatelessWidget {
  const ConfigurationTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonsTabBar(
              height: 40,
              backgroundColor: kPrimaryColor,
              unselectedBackgroundColor: Colors.grey[400],
              unselectedLabelStyle: const TextStyle(
                color: Colors.black87,
              ),
              labelStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              tabs: const [
                Tab(
                  text: "Emitter",
                ),
                Tab(
                  text: "Params",
                ),
                Tab(
                  text: "Headers",
                ),
                Tab(
                  text: "Auth",
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: <Widget>[
                  EmitterTabView(),
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
