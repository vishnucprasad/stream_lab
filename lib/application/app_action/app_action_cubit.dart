import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_action_state.dart';
part 'app_action_cubit.freezed.dart';

@injectable
class AppActionCubit extends Cubit<AppActionState> {
  AppActionCubit() : super(AppActionState.initial());

  void mainDividerHoverChanged(bool value) {
    emit(state.copyWith(
      isMainDividerHovered: value,
    ));
  }

  void subdividerHoverChanged(bool value) {
    emit(state.copyWith(
      isSubdividerHovered: value,
    ));
  }
}
