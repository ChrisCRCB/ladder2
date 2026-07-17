import 'package:backstreets_widgets/screens.dart';
import 'package:flutter/material.dart';
import 'package:ladder2/widgets/ladder_events_page.dart';
import 'package:ladder2/widgets/players_page.dart';

/// The main screen of the application.
class MainScreen extends StatelessWidget {
  /// Create an instance.
  const MainScreen({super.key});

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => const TabbedScaffold(
    tabs: [
      TabbedScaffoldTab(
        title: 'Players',
        icon: Text('All the players in the club'),
        child: PlayersPage(),
      ),
      TabbedScaffoldTab(
        title: 'Events',
        icon: Text(
          'The events which have happened in the club in the current period',
        ),
        child: LadderEventsPage(),
      ),
    ],
  );
}
