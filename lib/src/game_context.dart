import 'package:ladder2/src/database/database.dart';

/// Hold information about a [game].
class GameContext {
  /// Create an instance.
  const GameContext({
    required this.event,
    required this.game,
    required this.player1,
    required this.player2,
    required this.sets,
  });

  /// The game to use.
  final EventGame game;

  /// The [game]'s player 1.
  final Player player1;

  /// The [game]'s player 2.
  final Player player2;

  /// The sets for this game.
  final List<GameSet> sets;

  /// The event this game is part of.
  final LadderEvent event;
}
