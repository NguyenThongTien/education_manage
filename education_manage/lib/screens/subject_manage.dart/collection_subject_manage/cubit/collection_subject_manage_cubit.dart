import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'collection_subject_manage_state.dart';

class CollectionSubjectManageCubit extends Cubit<CollectionSubjectManageState> {
  CollectionSubjectManageCubit() : super(CollectionSubjectManageInitial());
}
