import 'package:flutter/material.dart';
import 'package:hackl/main.dart';

void showFilterScreen(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (context) {
      return ListView(
        children: [
          const Row(
            children: [CloseButton()],
          ),
          const FilterScreen(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {},
                child: const Text("Filtriraj"),
              ),
            ],
          ),
        ],
      );
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

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        expandeds[panelIndex] = isExpanded;
        setState(() {});
      },
      children: [
        ExpansionPanel(
          isExpanded: expandeds[0], canTapOnHeader: true,
          headerBuilder: (context, isExpanded) => Text("Datum"), // podaci o tipu i kategoriji
          body: Column(
            children: [
              const FiltersRow(
                ["Danas", "Sutra", "Idući vikend", "Idući tjedan"],
              ),
              IconButton(
                  onPressed: () {
                    showDatePicker(
                        context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 200)));
                  },
                  icon: Icon(Icons.calendar_month))
            ],
          ),
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          isExpanded: expandeds[1],
          headerBuilder: (context, isExpanded) => Text("Vrste događaja"), // podaci o tipu i kategoriji
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ["Priredba", "Koncert", "Muzej", "Kazalište"]
                .map(
                  (e) => CheckboxListTile(
                    dense: true,
                    title: Text(e),
                    value: false,
                    onChanged: (_) {},
                  ),
                )
                .toList(),
          ),
        ),
        ExpansionPanel(
          isExpanded: expandeds[2], canTapOnHeader: true,
          headerBuilder: (context, isExpanded) => Text("Kvart"), // podaci o tipu i kategoriji
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Donji grad",
              "Trnje",
              "Maksimir",
              "Črnomerec",
              "Gornji grad - Medveščak",
              "Donja Dubrava",
              "Gornja Dubrava",
              "Sesvete",
              "Podsused - Vrapče",
              "Podsljeme",
              "Novi Zagreb - istok",
              "Novi Zagreb - zapad",
              "Stenjevec",
              "Brezovica",
              "Trešnjevka - sjever",
              "Trešnjevka - jug",
              "Peščenica - Žitnjak"
            ]
                .map(
                  (e) => CheckboxListTile(
                    dense: true,
                    title: Text(e),
                    value: false,
                    onChanged: (_) {},
                  ),
                )
                .toList(),
          ),
        ),
        ExpansionPanel(
          canTapOnHeader: true,
          isExpanded: expandeds[3],
          headerBuilder: (context, isExpanded) => Text("Cijena"), // podaci o tipu i kategoriji
          body: const FiltersRow(
            ["Besplatno", "Do €10", "Do €20"],
          ),
        ),
      ],
    );
  }
}
