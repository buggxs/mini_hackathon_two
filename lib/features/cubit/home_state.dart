part of 'home_cubit.dart';

class HomeState {
  HomeState({this.productAmount});

  final int? productAmount;

  HomeState copyWith({
    int? productAmount,
  }) {
    return HomeState(
      productAmount: productAmount ?? this.productAmount,
    );
  }
}
