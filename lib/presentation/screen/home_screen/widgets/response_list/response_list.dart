import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/clear_all_responses_button.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/connection_status_badge.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/response_list_content.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/response_list_title.dart';
import 'package:toggle_list/toggle_list.dart';

class ResponseList extends StatelessWidget {
  const ResponseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              kWidthXl,
              Text(
                'Resposnses',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              ConnectionStatusBadge(),
              kWidth,
              ClearAllResponsesButton(),
              kWidth,
            ],
          ),
          kHeight,
          Expanded(
            child: BlocBuilder<SocketBloc, SocketState>(
              builder: (context, state) {
                return state.responses.isNotEmpty
                    ? ToggleList(
                        divider: kHeight,
                        children: List.generate(
                          state.responses.length,
                          (index) {
                            final response = state.responses[index];

                            return ToggleListItem(
                              itemDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey[200],
                              ),
                              title: ResponseListTitle(
                                type: response.type,
                                eventName:
                                    response.name.value.getOrElse(() => ""),
                                data:
                                    response.data?.value.getOrElse(() => "") ??
                                        "",
                              ),
                              content: ResponseListContent(
                                type: response.dataType,
                                data:
                                    response.data?.value.getOrElse(() => "") ??
                                        "",
                                responseIndex: index,
                              ),
                            );
                          },
                        ),
                      )
                    : const Center(
                        child: SizedBox(
                          child: Text(
                            'It looks like there haven’t been any responses yet.',
                          ),
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
