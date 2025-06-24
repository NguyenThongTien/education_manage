part of 'home_cubit.dart';

class HomeState extends Equatable {
  final int indexNavigatorBar;
  const HomeState({
    this.indexNavigatorBar = 0,
  });

  @override
  List<Object?> get props => [indexNavigatorBar];

  HomeState copyWith({
    int? indexNavigatorBar,
  }) {
    return HomeState(
      indexNavigatorBar: indexNavigatorBar ?? this.indexNavigatorBar,
    );
  }
}

class HomeInitial extends HomeState {}
