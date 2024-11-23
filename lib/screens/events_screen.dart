import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackl/blocs/events/events_cubit.dart';

import '../models/models.dart';
import 'event_screen.dart';
import 'filter_screen.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final SearchController searchController = SearchController();
  @override
  Widget build(BuildContext context) {
    final events = context.watch<EventsCubit>().state.events;
    final isLoading = context.watch<EventsCubit>().state.loading;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Događaji"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showFilterScreen(context),
        child: const Icon(Icons.filter_list),
      ),
      body: Column(
        children: [
          SearchBar(controller: searchController,
            padding: const WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 16.0)),
            onChanged: (value) {
              context.read<EventsCubit>().search(value);
            },
            leading: const Icon(Icons.search),
            trailing: [
              (context.watch<EventsCubit>().state.search != null)
                  ? IconButton(
                      onPressed: () {
                        searchController.clear();
                        context.read<EventsCubit>().search(null);
                      },
                      icon: const Icon(Icons.close),
                    )
                  : const SizedBox()
            ],
          ),
          Visibility(
            visible: isLoading && events.isNotEmpty,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: const LinearProgressIndicator(),
          ),
          Expanded(
            child: IndexedStack(
              index: (!isLoading && events.isEmpty)
                  ? 0
                  : (isLoading && events.isEmpty)
                      ? 1
                      : 2,
              alignment: Alignment.center,
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.face,
                      size: 50,
                    ),
                    Text(
                      ("Nismo pronašli tražene evente.\nProbajte promijeniti pojam za pretragu i/ili filtere pa probamo ponovno!"),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(),
                    ),
                    SizedBox(height: 8),
                    Text("Učitavamo evente za Vas..."),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EventScreen(EventModel.fromJson(eventRaw)),
                        ));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            clipBehavior: Clip.hardEdge,
                            child: SizedBox.fromSize(
                              size: const Size(80, 80),
                              child: Image.network(
                                'https://picsum.photos/100/100',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Flexible(
                              child: Text(
                            events[index].name,
                            style: Theme.of(context).textTheme.titleMedium,
                          )),
                        ],
                      ),
                    );
                  },
                  itemCount: events.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
