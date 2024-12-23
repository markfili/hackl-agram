import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackl/blocs/home/home_cubit.dart';
import 'package:hackl/main.dart';
import 'package:hackl/models/models.dart';
import 'package:hackl/screens/event_screen.dart';

class HomeScreen extends StatefulWidget {
  final void Function(dynamic index, {bool focusSearch}) onChangePage;

  const HomeScreen({super.key, required this.onChangePage});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeData = context.watch<HomeCubit>().state.homeData;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              children: [
                Image.asset('assets/app_bar_background.jpeg'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "KulturZagreb",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const Text(
                        "Svi ZG događaji na jednom mjestu!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Stack(
                        children: [
                          const SearchBar(
                            hintText: "Što želiš gledati?",
                          ),
                          Positioned.fill(
                              child: InkWell(
                            child: Container(),
                            onTap: () {
                              widget.onChangePage(1, focusSearch: true);
                            },
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            EventGroupCarousel("Popularno", homeData.popular),
            EventGroupCarousel("Danas", homeData.today),
            EventGroupCarousel("Sutra", homeData.tomorrow),
            if (homeData.tomorrow.isNotEmpty) FeaturedEvent(getRandomEvent(homeData.tomorrow)),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    widget.onChangePage(1, focusSearch: true);
                  },
                  child: const Text('Pronađi događaj za sebe'),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  EventModel getRandomEvent(List<EventModel> events) {
    int random = Random().nextInt(events.length);
    return events[random];
  }
}

class EventGroupCarousel extends StatelessWidget {
  final List<EventModel> group;
  final String title;

  const EventGroupCarousel(this.title, this.group, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 250),
          child: CarouselView(
            itemExtent: 270,
            shrinkExtent: 250,
            children: group.map((e) => NormalEvent(e)).toList(),
            onTap: (value) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EventScreen(group[value]),
              ));
            },
          ),
        ),
      ],
    );
  }
}
