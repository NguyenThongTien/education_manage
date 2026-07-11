part of 'subject_manage_cubit.dart';

class SubjectManageState {
  List<SubjectModel> subjects;
  SubjectManageState({
    this.subjects = const [],
  });

  SubjectManageState copyWith({
    List<SubjectModel>? subjects,
  }) {
    return SubjectManageState(
      subjects: subjects ?? this.subjects,
    );
  }
}

final class SubjectManageInitial extends SubjectManageState {}
