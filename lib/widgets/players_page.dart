import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ladder2/src/providers.dart';
import 'package:ladder2/widgets/async_value_builder.dart';

/// The players tab.
class PlayersPage extends ConsumerWidget {
  /// Create an instance.
  const PlayersPage({this.playerOrder = PlayerOrder.name, super.key});

  /// The ordering scheme to use.
  final PlayerOrder playerOrder;

  /// Build the widget.
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final value = ref.watch(playersProvider(playerOrder));
    return AsyncValueBuilder(
      value: value,
      builder: (players) => ListView.builder(
        itemBuilder: (_, final index) {
          final player = players[index];
          return ListTile(
            autofocus: index == 0,
            title: Text(player.name),
            onTap: () {},
          );
        },
        itemCount: players.length,
        shrinkWrap: true,
      ),
    );
  }
}
