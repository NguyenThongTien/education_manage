import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'class_room_state.dart';

class ClassRoomCubit extends Cubit<ClassRoomState> {
  ClassRoomCubit() : super(ClassRoomInitial());
}
