import 'package:basketball_counter_app/Cubit/Counter_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int ATeamPoints = 0;
  int BTeamPoints = 0;

  void IncrementPoints(String TeamName, int buttonCLick) {
    if (TeamName == 'A') {
      ATeamPoints += buttonCLick;
      emit(CounterAIncrementState());
    } else if (TeamName == 'A' || TeamName == 'B' && buttonCLick == 0) {
      ATeamPoints = 0;
      BTeamPoints = 0;
    } else {
      BTeamPoints += buttonCLick;
      emit(CounterBIncrementState());
    }
  }
}
