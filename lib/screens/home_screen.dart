import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackl/blocs/home/home_cubit.dart';
import 'package:hackl/main.dart';
import 'package:hackl/models/models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeData = context.watch<HomeCubit>().state.homeData;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: [
              Image.asset('assets/app_bar_background.jpeg'),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "Agram program",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      "Svi ZG događaji na jednom mjestu!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SearchBar(
                      hintText: "Wadayouwant?",
                    ),
                  ],
                ),
              ),
            ],
          ),
          EventGroupCarousel("Popularno", homeData.popular),
          EventGroupCarousel("Danas", homeData.today),
          EventGroupCarousel("Sutra", homeData.tomorrow),
          FeaturedEvent(getRandomEvent()),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {},
                child: const Text('Pronađi događaj za sebe'),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  List<String> getRandomEvents(int count) {
    int returnCount = 0;
    return events.where(
      (element) {
        if (returnCount == count) return false;
        returnCount++;
        return DateTime.now().millisecondsSinceEpoch & 2 == 0;
      },
    ).toList();
  }

  String getRandomEvent() {
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
            itemExtent: 330,
            shrinkExtent: 250,
            children: group.map((e) => NormalEvent(e)).toList(),
          ),
        ),
      ],
    );
  }
}
