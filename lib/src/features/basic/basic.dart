import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// ::::Step 2.1:add this that automates the code generation,
//      Run:: "dart run build_runner watch" -- continuously generates the code
part 'basic.g.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
// ::::Step 2: Create the provider
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}

// ::::Step 1: Wrap the stuff in provider scop
class Basic extends ConsumerWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ProviderScope(child: BasicApp());
  }
}

// ::::Step 3: ConsumerWidget -- same as stateless widget
class BasicApp extends ConsumerWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Basic Example"),
      ),
      body: Center(
        child: Center(
          child: Text(value),
        ),
      ),
    );
  }
}
