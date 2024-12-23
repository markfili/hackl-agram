import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackl/blocs/events/events_cubit.dart';
import 'package:hackl/blocs/filters/filters_cubit.dart';
import 'package:hackl/blocs/home/home_cubit.dart';
import 'package:hackl/data/network/api_client.dart';
import 'package:hackl/data/repositories/events_repository.dart';
import 'package:hackl/data/repositories/filters_repository.dart';
import 'package:hackl/data/repositories/home_repository.dart';
import 'package:hackl/data/sources/remote_source.dart';
import 'package:hackl/screens/event_screen.dart';
import 'package:hackl/screens/events_screen.dart';
import 'package:hackl/screens/map_screen.dart';
import 'package:package_info_plus/package_info_plus.dart';

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
            )..interceptors.add(AwesomeDioInterceptor()),
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
            RepositoryProvider<FiltersRepository>(
              create: (context) => FiltersRepository(
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
                create: (context) => EventsCubit(
                  repository: context.read<EventsRepository>(),
                ),
              ),
              BlocProvider<FiltersCubit>(
                create: (context) => FiltersCubit(
                  repository: context.read<FiltersRepository>(),
                ),
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
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(onChangePage: (index, {bool focusSearch = false}) {
            _pageController.jumpToPage(index);
            setState(() {});
            if (focusSearch) {
              focusNotifier.value = focusSearch;
            }
          }),
          EventsScreen(searchFocusNotifier: focusNotifier),
          const MapScreen(),
          const ProfileScreen(),
        ],
      ),
    );
  }

  final SearchFocusNotifier focusNotifier = SearchFocusNotifier(false);
}

class SearchFocusNotifier extends ValueNotifier<bool> {
  SearchFocusNotifier(super.value);
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vaš profil"),
      ),
      body: Column(
        children: [
          const Expanded(child: Placeholder()),
          FutureBuilder(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.requireData;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: AboutListTile(
                        icon: const Icon(
                          Icons.info,
                        ),
                        applicationName: data.appName,
                        applicationVersion: data.version,
                      ),
                    ),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}

class FeaturedEvent extends StatelessWidget {
  final EventModel event;

  const FeaturedEvent(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EventScreen(event),
        ));
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: Image.network('https://picsum.photos/500/300'),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text(
                event.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      if (event.eventType != null) Text(event.eventType?.name ?? ''),
                      const Spacer(),
                      const Icon(Icons.chevron_right),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          event.description,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NormalEvent extends StatelessWidget {
  final EventModel event;

  const NormalEvent(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Flexible(
            child: Card(
              clipBehavior: Clip.hardEdge,
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
          ),
          ListTile(
            title: Text(
              event.name,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: event.eventType != null ? Text(event.eventType?.name ?? '') : null,
          )
        ],
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
