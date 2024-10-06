import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'activity.dart';

// Necessary for code-generation to work
part 'provider.g.dart';

/// This will create a provider named `activityProvider`
/// which will cache the result of this function.
@riverpod
Future<Activity> activity(ActivityRef ref) async {
  try {
    // Using package:http, we fetch a random activity from the Bored API.
    final response =
        await http.get(Uri.https('bored.api.lewagon.com', '/api/activity'));
    // Using dart:convert, we then decode the JSON payload into a Map data structure.
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    // Finally, we convert the Map into an Activity instance.
    return Activity.fromJson(json);
  } catch (e) {
    // print(e);
    // rethrow;
    throw Exception("Something went wrong!");
  }
}
