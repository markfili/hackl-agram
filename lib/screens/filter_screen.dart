import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackl/blocs/events/events_cubit.dart';
import 'package:hackl/blocs/filters/filters_cubit.dart';
import 'package:hackl/utils/constants.dart';

void showFilterScreen(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (context) {
      return const FilterScreen();
    },
  );
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<bool> expandeds = List.of([false, false, false, false]);
  final List<int> selectedDistricts = List.empty(growable: true);
  final List<int> selectedTypes = List.empty(growable: true);
  final List<String> selectedDates = List.empty(growable: true);
  final List<String> selectedPrices = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    final eventsState = context.read<EventsCubit>().state.filters;
    if (eventsState != null && eventsState.containsKey(FiltersConstants.dates)) {
      selectedDates.addAll(eventsState[FiltersConstants.dates]);
      expandeds[0] = true;
    }
    if (eventsState != null && eventsState.containsKey(FiltersConstants.types)) {
      selectedTypes.addAll(eventsState[FiltersConstants.types]);
      expandeds[1] = true;
    }
    if (eventsState != null && eventsState.containsKey(FiltersConstants.districts)) {
      selectedDistricts.addAll(eventsState[FiltersConstants.districts]);
      expandeds[2] = true;
    }
    if (eventsState != null && eventsState.containsKey(FiltersConstants.prices)) {
      selectedPrices.addAll(eventsState[FiltersConstants.prices]);
      expandeds[3] = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FiltersCubit>().state;
    return Scaffold(
      appBar: AppBar(
        actions: const [CloseButton()],
      ),
      body: state.when(
        initial: () => const SizedBox(),
        loading: () => const Center(child: CircularProgressIndicator()),
        success: (filters) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ExpansionPanelList(
                      expansionCallback: (panelIndex, isExpanded) {
                        expandeds[panelIndex] = isExpanded;
                        setState(() {});
                      },
                      children: [
                        FilterExpansionPanel(
                          title: "Datum",
                          isExpanded: expandeds[0],
                          body: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: FiltersRow(
                                      items: filters.dates
                                          .map(
                                            (e) => FilterRowItem(
                                              title: e.title,
                                              value: e.value,
                                              selected: selectedDates.contains(e.value),
                                            ),
                                          )
                                          .toList(),
                                      onSelected: (selected, value) {
                                        setState(() {
                                          if (selected != null) {
                                            if (selectedDates.contains(value)) {
                                              selectedDates.removeWhere((element) => element == value);
                                            } else {
                                              selectedDates.add(value);
                                            }
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showDatePicker(
                                          context: context,
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now().add(const Duration(days: 200)));
                                    },
                                    icon: const Icon(
                                      Icons.calendar_month,
                                      size: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        FilterExpansionPanel(
                          isExpanded: expandeds[1],
                          title: "Vrste događaja",
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: filters.types
                                .map(
                                  (e) => FilterCheckboxListTile(
                                    title: e.name,
                                    value: e.id,
                                    checked: selectedDistricts.contains(e.id),
                                    onChanged: (selected) {
                                      setState(() {
                                        if (selected != null) {
                                          if (selectedDistricts.contains(e.id)) {
                                            selectedDistricts.removeWhere((element) => element == e.id);
                                          } else {
                                            selectedDistricts.add(e.id);
                                          }
                                        }
                                      });
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        FilterExpansionPanel(
                          isExpanded: expandeds[2],
                          title: "Kvart",
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: filters.districts
                                .map(
                                  (e) => FilterCheckboxListTile(
                                    title: e.name,
                                    checked: false,
                                    value: e.id,
                                    onChanged: (selected) {
                                      setState(() {
                                        if (selected != null) {
                                          if (selectedTypes.contains(e.id)) {
                                            selectedTypes.removeWhere((element) => element == e.id);
                                          } else {
                                            selectedTypes.add(e.id);
                                          }
                                        }
                                      });
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        FilterExpansionPanel(
                          isExpanded: expandeds[3],
                          title: "Cijena",
                          body: Row(
                            children: [
                              Expanded(
                                child: FiltersRow(
                                  items: filters.prices
                                      .map(
                                        (e) => FilterRowItem(
                                          title: e.title,
                                          value: e.value,
                                          selected: selectedPrices.contains(e.value),
                                        ),
                                      )
                                      .toList(),
                                  onSelected: (selected, value) {
                                    setState(() {
                                      if (selected != null) {
                                        if (selectedPrices.contains(value)) {
                                          selectedPrices.removeWhere((element) => element == value);
                                        } else {
                                          selectedPrices.add(value);
                                        }
                                      }
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {
                      context.read<EventsCubit>().loadEventsWithFilters(
                            districts: selectedDistricts,
                            types: selectedTypes,
                            dates: selectedDates,
                            prices: selectedPrices,
                          );
                      Navigator.pop(context);
                    },
                    child: const Text("Filtriraj"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FiltersRow extends StatelessWidget {
  final List<FilterRowItem> items;

  const FiltersRow({
    super.key,
    required this.items,
    required this.onSelected,
  });

  final void Function(bool? selected, dynamic value) onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        children: items
            .map(
              (e) => FilterChip(
                label: Text(
                  e.title,
                  style: TextStyle(color: e.selected ? Colors.blue : null),
                ),
                selected: e.selected,
                onSelected: (value) => onSelected.call(value, e.value),
              ),
            )
            .toList(),
      ),
    );
  }
}

class FilterRowItem {
  final String title;
  final dynamic value;
  final bool selected;

  FilterRowItem({
    required this.title,
    required this.value,
    required this.selected,
  });
}

class FilterCheckboxListTile extends StatelessWidget {
  const FilterCheckboxListTile({
    super.key,
    required this.checked,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final dynamic value;
  final bool checked;
  final void Function(bool? selected) onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: true,
      title: Text(title),
      value: checked,
      onChanged: onChanged,
    );
  }
}

class FilterExpansionPanel extends ExpansionPanel {
  final String title;

  FilterExpansionPanel({
    super.isExpanded,
    required super.body,
    required this.title,
  }) : super(
          canTapOnHeader: true,
          headerBuilder: (context, isExpanded) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: isExpanded ? Colors.blue : null,
                    fontWeight: FontWeight.w700,
                    fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                  ),
                ),
              ],
            ),
          ),
        );
}
