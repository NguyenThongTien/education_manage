import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'class_room_manager_state.dart';

class ClassRoomManagerCubit extends Cubit<ClassRoomManagerState> {
  ClassRoomManagerCubit() : super(ClassRoomManagerInitial());
}
