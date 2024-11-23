import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackl/blocs/events/events_cubit.dart';
import 'package:hackl/blocs/home/home_cubit.dart';
import 'package:hackl/data/network/api_client.dart';
import 'package:hackl/data/repositories/events_repository.dart';
import 'package:hackl/data/repositories/home_repository.dart';
import 'package:hackl/data/sources/remote_source.dart';
import 'package:hackl/screens/event_screen.dart';
import 'package:hackl/screens/events_screen.dart';
import 'package:hackl/screens/map_screen.dart';

import 'models/models.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: RepositoryProvider<RemoteSource>(
        create: (_) => RemoteSource(
          apiClient: ApiClient(
            dio: Dio(
              BaseOptions(
                baseUrl: 'http://46.101.249.235/',
                queryParameters: {'format': 'json'},
                headers: {'X-Pinggy-No-Screen': '123'},
              ),
            ),
          ),
        ),
        child: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<HomeRepository>(
              create: (BuildContext context) => HomeRepository(
                remoteSource: context.read<RemoteSource>(),
              ),
            ),
            RepositoryProvider<EventsRepository>(
              create: (context) => EventsRepository(
                remoteSource: context.read<RemoteSource>(),
              ),
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider<HomeCubit>(
                create: (context) => HomeCubit(
                  repository: context.read<HomeRepository>(),
                ),
              ),
              BlocProvider<EventsCubit>(
                create: (context) => EventsCubit(repository: context.read<EventsRepository>()),
              ),
            ],
            child: const MyHomePage(),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageController.hasClients ? _pageController.page?.toInt() ?? 0 : 0,
        onTap: (value) {
          setState(() {});
          _pageController.jumpToPage(value);
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Događaji',
            icon: Icon(Icons.event),
          ),
          BottomNavigationBarItem(
            label: 'Karta',
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            label: 'Profil',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          EventsScreen(),
          MapScreen(),
          Placeholder(),
        ],
      ),
    );
  }
}

class FiltersRow extends StatelessWidget {
  final List<String> filters;

  const FiltersRow(this.filters, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 8,
      children: filters
          .map(
            (e) => FilterChip(
              label: Text(e),
              onSelected: (bool value) {},
            ),
          )
          .toList(),
    );
  }
}

class FeaturedEvent extends StatelessWidget {
  final String title;

  const FeaturedEvent(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.network('https://picsum.photos/500/300'),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.heart_broken,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}

class NormalEvent extends StatelessWidget {
  final EventModel event;

  const NormalEvent(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EventScreen(event),
        ));
      },
      child: Card(
        child: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  Expanded(
                    child: Image.network(
                      'https://picsum.photos/300/300?v${event.hashCode}',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              event.name,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

const events = [
  "Predstava za djecu - Ružno pače",
  "Predstava Čudnovate zgode šegrta Hlapića",
  "Predstava Ježeva kućica",
  "Izložba: Mara Bratoš / Fotografije",
  "Predstava Maša i Božić",
  "Izložba: Ideal i stvarnost / Prvo zlatno doba mađarskog slikarstva i začeci hrvatske moderne umjetnosti",
  "Ciklus Zbirka kao glagol",
  "Izložba: Atelijeri Žitnjak / Od periferije do centra",
  "Izložba: Zlatno doba nizozemskog slikarstva",
  "Artionica / Likovne radionice za djecu Galerije Klovićevi dvori",
  "Artionica / Likovne radionice za odrasle Galerije Klovićevi dvori",
  "Predstava Smogovci",
  "NEUSTRAŠIVA metaFORA 2025. - natječaj za kratku priču.",
  "Otvaranje multimedijalne izložbe ‘Deus Machina // Iter’ umjetnice Helene Schultheis Edgeler",
  "Kino na rubu, programski blok Mentori i studenti",
  "PREDSTAVA ZA DJECU – Čudo na smetlištu",
  "Predstava Orašar udruge LOFT",
  "Promocija knjige \"Menadžer hodočasnik\" Borisa Trupčevića",
  "Antisezona, blok u studenom, \"Koreokon\"",
  "Pričaonica utorkom Medina priča na Odjelu za djecu i mladež Knjižnice Medveščak",
  "Knjižnični zmaj - zaštitinik priča",
  "Slijedimo slike, pričamo priče",
  "Slika u riječi : pripovijedanje uz slike",
  "Dobro jutro svijete, ja sam sretno dijete - Izložba dječjih likovnih radova polaznika DV Sesvete",
  "Božićna Izložba likovnih radova djece polaznika DV Leptir"
];
