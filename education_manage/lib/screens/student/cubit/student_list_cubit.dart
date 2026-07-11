import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'student_list_state.dart';

class StudentListCubit extends Cubit<StudentListState> {
  StudentListCubit() : super(StudentListInitial());
}
