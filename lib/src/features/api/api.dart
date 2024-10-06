import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ::::Step 1: Wrap the stuff in provider scop
class ApiCase extends ConsumerWidget {
  const ApiCase({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ProviderScope(child: ApiApp());
  }
}

class ApiApp extends ConsumerWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
