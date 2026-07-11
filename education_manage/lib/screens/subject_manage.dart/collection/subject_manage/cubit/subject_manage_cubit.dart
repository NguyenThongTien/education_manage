import 'package:bloc/bloc.dart';
import 'package:education_manage/model/subject_model.dart';
import 'package:education_manage/networking/repository/subject_repository_impl.dart';

part 'subject_manage_state.dart';

class SubjectManageCubit extends Cubit<SubjectManageState> {
  SubjectManageCubit(this._subjectRepository) : super(SubjectManageInitial());

  final SubjectRepository _subjectRepository;

  void getSubjects() async {
    try {
      print(" có vào day getSubjects");
      final response = await _subjectRepository.getSubjects();
      print("response: ${response.data?.length}");
      emit(state.copyWith(subjects: response.data ?? []));
    } catch (e) {
      print(e.toString());
    }
  }
}
