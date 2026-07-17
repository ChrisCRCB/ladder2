// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provide the database.

@ProviderFor(database)
final databaseProvider = DatabaseProvider._();

/// Provide the database.

final class DatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  /// Provide the database.
  DatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'databaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$databaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return database(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$databaseHash() => r'fd608abcdaae9d469807ed011b7b14a455466114';

/// Provides the most recent points reset.

@ProviderFor(pointsResetWhen)
final pointsResetWhenProvider = PointsResetWhenProvider._();

/// Provides the most recent points reset.

final class PointsResetWhenProvider
    extends
        $FunctionalProvider<
          AsyncValue<DateTime?>,
          DateTime?,
          FutureOr<DateTime?>
        >
    with $FutureModifier<DateTime?>, $FutureProvider<DateTime?> {
  /// Provides the most recent points reset.
  PointsResetWhenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pointsResetWhenProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pointsResetWhenHash();

  @$internal
  @override
  $FutureProviderElement<DateTime?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<DateTime?> create(Ref ref) {
    return pointsResetWhen(ref);
  }
}

String _$pointsResetWhenHash() => r'3fb14420643eb74c22167bf76a9e14c5c8b2afbc';

/// Provide the points for the given player.

@ProviderFor(playerPoints)
final playerPointsProvider = PlayerPointsFamily._();

/// Provide the points for the given player.

final class PlayerPointsProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  /// Provide the points for the given player.
  PlayerPointsProvider._({
    required PlayerPointsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'playerPointsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$playerPointsHash();

  @override
  String toString() {
    return r'playerPointsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    final argument = this.argument as int;
    return playerPoints(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PlayerPointsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$playerPointsHash() => r'4a79e7aa815e65c952c15b3ce230a748fa18e3b6';

/// Provide the points for the given player.

final class PlayerPointsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<int>, int> {
  PlayerPointsFamily._()
    : super(
        retry: null,
        name: r'playerPointsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provide the points for the given player.

  PlayerPointsProvider call(int playerId) =>
      PlayerPointsProvider._(argument: playerId, from: this);

  @override
  String toString() => r'playerPointsProvider';
}
