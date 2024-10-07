import 'package:collection/collection.dart';

enum Language {
  Japanese,
  English,
  Portuguese,
  None,
}

enum Goal {
  Watch_Anime,
  Learn_from_Scratch,
  Practice_my_speaking,
  Improve_my_accent,
  Sleep_Learning,
}

enum Level {
  Starter,
  Basic,
  Lot,
  Samurai,
  Unknown,
}

enum DailyGoal {
  Genin,
  Chuunin,
  Jounin,
  Kage,
  Unknown,
}

enum UserStatus {
  free,
  premium,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Language):
      return Language.values.deserialize(value) as T?;
    case (Goal):
      return Goal.values.deserialize(value) as T?;
    case (Level):
      return Level.values.deserialize(value) as T?;
    case (DailyGoal):
      return DailyGoal.values.deserialize(value) as T?;
    case (UserStatus):
      return UserStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
