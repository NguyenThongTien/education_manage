import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'collection_room_manage_dart_state.dart';

class CollectionRoomManageDartCubit extends Cubit<CollectionRoomManageDartState> {
  CollectionRoomManageDartCubit() : super(CollectionRoomManageDartInitial());
}
