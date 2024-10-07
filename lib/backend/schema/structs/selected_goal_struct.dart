// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedGoalStruct extends FFFirebaseStruct {
  SelectedGoalStruct({
    List<Goal>? goals,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _goals = goals,
        super(firestoreUtilData);

  // "Goals" field.
  List<Goal>? _goals;
  List<Goal> get goals => _goals ?? const [];
  set goals(List<Goal>? val) => _goals = val;

  void updateGoals(Function(List<Goal>) updateFn) {
    updateFn(_goals ??= []);
  }

  bool hasGoals() => _goals != null;

  static SelectedGoalStruct fromMap(Map<String, dynamic> data) =>
      SelectedGoalStruct(
        goals: getEnumList<Goal>(data['Goals']),
      );

  static SelectedGoalStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedGoalStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Goals': _goals?.map((e) => e.serialize()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Goals': serializeParam(
          _goals,
          ParamType.Enum,
          isList: true,
        ),
      }.withoutNulls;

  static SelectedGoalStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedGoalStruct(
        goals: deserializeParam<Goal>(
          data['Goals'],
          ParamType.Enum,
          true,
        ),
      );

  @override
  String toString() => 'SelectedGoalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SelectedGoalStruct &&
        listEquality.equals(goals, other.goals);
  }

  @override
  int get hashCode => const ListEquality().hash([goals]);
}

SelectedGoalStruct createSelectedGoalStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectedGoalStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectedGoalStruct? updateSelectedGoalStruct(
  SelectedGoalStruct? selectedGoal, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectedGoal
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectedGoalStructData(
  Map<String, dynamic> firestoreData,
  SelectedGoalStruct? selectedGoal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectedGoal == null) {
    return;
  }
  if (selectedGoal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectedGoal.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectedGoalData =
      getSelectedGoalFirestoreData(selectedGoal, forFieldValue);
  final nestedData =
      selectedGoalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectedGoal.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectedGoalFirestoreData(
  SelectedGoalStruct? selectedGoal, [
  bool forFieldValue = false,
]) {
  if (selectedGoal == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectedGoal.toMap());

  // Add any Firestore field values
  selectedGoal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectedGoalListFirestoreData(
  List<SelectedGoalStruct>? selectedGoals,
) =>
    selectedGoals?.map((e) => getSelectedGoalFirestoreData(e, true)).toList() ??
    [];
