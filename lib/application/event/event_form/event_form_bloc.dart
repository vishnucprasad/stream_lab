import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/domain/event/failures/event_failure.dart';
import 'package:stream_lab/domain/event/models/event_form_data.dart';

part 'event_form_event.dart';
part 'event_form_state.dart';
part 'event_form_bloc.freezed.dart';

@injectable
class EventFormBloc extends Bloc<EventFormEvent, EventFormState> {
  EventFormBloc() : super(EventFormState.initial()) {
    on<EventFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
