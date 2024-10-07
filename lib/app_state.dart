import 'package:flutter/material.dart';
import '/backend/schema/enums/enums.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  Language? _selectedLang = Language.None;
  Language? get selectedLang => _selectedLang;
  set selectedLang(Language? value) {
    _selectedLang = value;
  }

  List<Goal> _selectedGoals = [];
  List<Goal> get selectedGoals => _selectedGoals;
  set selectedGoals(List<Goal> value) {
    _selectedGoals = value;
  }

  void addToSelectedGoals(Goal value) {
    selectedGoals.add(value);
  }

  void removeFromSelectedGoals(Goal value) {
    selectedGoals.remove(value);
  }

  void removeAtIndexFromSelectedGoals(int index) {
    selectedGoals.removeAt(index);
  }

  void updateSelectedGoalsAtIndex(
    int index,
    Goal Function(Goal) updateFn,
  ) {
    selectedGoals[index] = updateFn(_selectedGoals[index]);
  }

  void insertAtIndexInSelectedGoals(int index, Goal value) {
    selectedGoals.insert(index, value);
  }

  Level? _currentLevel = Level.Unknown;
  Level? get currentLevel => _currentLevel;
  set currentLevel(Level? value) {
    _currentLevel = value;
  }

  DailyGoal? _dailyGoal = DailyGoal.Unknown;
  DailyGoal? get dailyGoal => _dailyGoal;
  set dailyGoal(DailyGoal? value) {
    _dailyGoal = value;
  }

  UserStatus? _userStatus = UserStatus.free;
  UserStatus? get userStatus => _userStatus;
  set userStatus(UserStatus? value) {
    _userStatus = value;
  }
}
