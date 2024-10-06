# riverpod_learning

A new Flutter project.

## Getting Started

# setup
```
#install riverpod
flutter pub add flutter_riverpod
flutter pub add riverpod_annotation
flutter pub add dev:riverpod_generator
flutter pub add dev:build_runner
flutter pub add dev:custom_lint
flutter pub add dev:riverpod_lint

#analysis_options.yaml
analyzer:
  plugins:
    - custom_lint

#install freeze -- json serialize
flutter pub add freezed_annotation
flutter pub add dev:build_runner
flutter pub add dev:freezed
# if using freezed to generate fromJson/toJson, also add:
flutter pub add json_annotation
flutter pub add dev:json_serializable
```

###Dart commands
```
dart run custom_lint

dart run build_runner watch
dart run build_runner build
lutter pub run build_runner build --delete-conflicting-outputs
```