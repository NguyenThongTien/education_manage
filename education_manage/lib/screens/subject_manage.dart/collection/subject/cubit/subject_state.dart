part of 'subject_cubit.dart';

class SubjectState extends Equatable{
  final String nameSubject;
  final String codeSubject;
  final bool activeSubject;
  final String description;
  const SubjectState({
     this.nameSubject = '',
     this.codeSubject = '',
     this.activeSubject = true,
     this.description = '',
  });

  @override
  List<Object> get props {
    return [
      nameSubject,
      codeSubject,
      activeSubject,
      description,
    ];
  }

  SubjectState copyWith({
    String? nameSubject,
    String? codeSubject,
    bool? activeSubject,
    String? description,
  }) {
    return SubjectState(
      nameSubject: nameSubject ?? this.nameSubject,
      codeSubject: codeSubject ?? this.codeSubject,
      activeSubject: activeSubject ?? this.activeSubject,
      description: description ?? this.description,
    );
  }
}

class SubjectInitial extends SubjectState {}
