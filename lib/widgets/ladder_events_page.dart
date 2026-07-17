import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ladder2/src/providers.dart';
import 'package:ladder2/widgets/async_value_builder.dart';

/// The events page.
class LadderEventsPage extends ConsumerWidget {
  /// Create an instance.
  const LadderEventsPage({super.key});

  /// Build the widget.
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final value = ref.watch(ladderEventsProvider);
    return AsyncValueBuilder(
      value: value,
      builder: (events) => ListView.builder(
        itemBuilder: (_, final index) {
          final event = events[index];
          return ListTile(
            autofocus: index == 0,
            title: Text(event.when.toIso8601String()),
            onTap: () {},
          );
        },
        itemCount: events.length,
        shrinkWrap: true,
      ),
    );
  }
}
