import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'activity.dart';
import 'provider.dart';

// ::::Step 1: Wrap the stuff in provider scop
class ApiCase extends ConsumerWidget {
  const ApiCase({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("API Example"),
      ),
      body: const ApiApp(),
    ));
  }
}

class ApiApp extends ConsumerWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Read the activityProvider. This will start the network request
    // if it wasn't already started.
    // By using ref.watch, this widget will rebuild whenever the
    // the activityProvider updates. This can happen when:
    // - The response goes from "loading" to "data/error"
    // - The request was refreshed
    // - The result was modified locally (such as when performing side-effects)
    // ...
    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    return Center(
      /// Since network-requests are asynchronous and can fail, we need to
      /// handle both error and loading states. We can use pattern matching for this.
      /// We could alternatively use `if (activity.isLoading) { ... } else if (...)`
      child: switch (activity) {
        AsyncData(:final value) => Text('Activity: ${value.activity}'),
        AsyncError() => const Text('Oops, something unexpected happened'),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}
