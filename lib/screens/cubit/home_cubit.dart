import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(productAmount: 1));

  void increaseAmount() {
    emit(state.copyWith(productAmount: 2));
  }
}
