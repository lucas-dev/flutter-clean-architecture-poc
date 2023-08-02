import 'package:common_presentation/presentation.dart';
import 'package:common_ui/ui.dart';
import 'package:countries_di/di.dart';
import 'package:countries_presentation/presentation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesBlocBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountriesBloc, CountriesState>(
      builder: (context, state) {
        return state.viewStatus.when(
            idle: () => SizedBox.shrink(),
            error: (String message) =>
                Center(child: MessageDisplay(message: message)),
            loading: (LoadType loadType) => Center(child: LoadingWidget()),
            loaded: (data, LoadType loadType) {
              if (data.isEmpty) {
                return Center(child: MessageDisplay(message: 'No data'));
              } else {
                return PullToRefreshList(
                    listview: ListViewWidget(
                      length: (data as List<CountryView>).length,
                      text: (index) => (data)[index].name,
                      onTapCallback: (index) => {
                        countriesInjector().navigateToUniversities(
                            data[index].id, data[index].name)
                      },
                    ),
                    onRefreshCallback: () async =>
                        countriesInjector().refresh());
              }
            });
      },
    );
  }
}
