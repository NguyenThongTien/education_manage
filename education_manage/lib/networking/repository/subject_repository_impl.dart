import 'package:education_manage/networking/api/education_manage_api.dart';
import 'package:education_manage/networking/dto/response/subject_response.dart';

abstract class SubjectRepository {
  Future<GetSubjectResponse> getSubjects();
}

class SubjectRepositoryImpl extends SubjectRepository {
  final EducationManageApi _api;

  SubjectRepositoryImpl(this._api);

  @override
  Future<GetSubjectResponse> getSubjects() {
    return _api.getSubjects();
  }
} 
