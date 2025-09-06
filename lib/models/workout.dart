import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/workout_type.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String id,
    required String name,
    required double weight,
    required int reps,
    required int sets,
    required bool isCompleted,
    required WorkoutType type,
    required DateTime createdAt,
    DateTime? completedAt,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);

  @override
  // TODO: implement completedAt
  DateTime? get completedAt => throw UnimplementedError();

  @override
  // TODO: implement createdAt
  DateTime get createdAt => throw UnimplementedError();

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  // TODO: implement isCompleted
  bool get isCompleted => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  // TODO: implement reps
  int get reps => throw UnimplementedError();

  @override
  // TODO: implement sets
  int get sets => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement type
  WorkoutType get type => throw UnimplementedError();

  @override
  // TODO: implement weight
  double get weight => throw UnimplementedError();
}
