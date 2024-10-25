import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/table_no_row_widget.dart';

class QueryParamsTable extends StatelessWidget {
  const QueryParamsTable({super.key});

  @override
  Widget build(BuildContext context) {
    PlutoGridStateManager? stateManager;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              kWidth,
              const Text(
                'Query params',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () => context
                    .read<ConnectionFormBloc>()
                    .add(const ConnectionFormEvent.addQueryParameter()),
                icon: const Icon(Icons.add),
              ),
              kWidth,
            ],
          ),
          Expanded(
            child: BlocConsumer<ConnectionFormBloc, ConnectionFormState>(
              listener: (context, state) {
                stateManager?.removeAllRows();
                stateManager
                    ?.appendRows(state.connectionFormData!.queryParameters);
              },
              builder: (context, state) => PlutoGrid(
                columns: kDefalutPlutoColumns,
                rows: state.connectionFormData!.queryParameters.toList(),
                configuration: PlutoGridConfiguration(
                  enterKeyAction: PlutoGridEnterKeyAction.editingAndMoveRight,
                  columnSize: const PlutoGridColumnSizeConfig(
                    autoSizeMode: PlutoAutoSizeMode.scale,
                  ),
                  style: PlutoGridStyleConfig(
                    gridBackgroundColor: Colors.transparent,
                    rowColor: Colors.transparent,
                    activatedColor: Colors.transparent,
                    cellColorInEditState: Colors.grey[400]!,
                    activatedBorderColor: kPrimaryColor!,
                  ),
                ),
                noRowsWidget: TableNoRowWidget(
                  text: 'There is no query parameters available at this moment',
                  onPressed: () => context
                      .read<ConnectionFormBloc>()
                      .add(const ConnectionFormEvent.addQueryParameter()),
                ),
                onLoaded: (PlutoGridOnLoadedEvent event) {
                  stateManager = event.stateManager;
                },
                onRowChecked: (event) {},
                onChanged: (event) => context
                    .read<ConnectionFormBloc>()
                    .add(ConnectionFormEvent.queryRowChanged(
                      rowIndex: event.rowIdx,
                      row: event.row,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
