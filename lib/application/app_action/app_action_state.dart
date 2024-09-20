part of 'app_action_cubit.dart';

@freezed
class AppActionState with _$AppActionState {
  const factory AppActionState({
    required bool isMainDividerHovered,
    required bool isSubdividerHovered,
  }) = _AppActionState;

  factory AppActionState.initial() {
    return const AppActionState(
      isMainDividerHovered: false,
      isSubdividerHovered: false,
    );
  }
}
