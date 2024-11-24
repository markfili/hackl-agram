import 'package:flutter/material.dart';
import 'package:hackl/models/models.dart';

class EventScreen extends StatefulWidget {
  final EventModel event;

  const EventScreen(this.event, {super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  late EventModel event;

  @override
  void initState() {
    super.initState();
    event = widget.event;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalji događaja"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.hardEdge,
                child: Image.network('https://picsum.photos/500/500?${event.hashCode}'),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      event.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
              Wrap(
                runSpacing: 8,
                spacing: 8,
                children: getCategoriesAndTypes(),
              ),
              const SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  event.location ?? 'unknown location',// ?? event.organizer.location,
                ),
              ), // FIXME: set location to null)

              const SizedBox(
                width: 16,
              ),
              Text(
                event.description,
                maxLines: 5,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextButton(onPressed: () {}, child: const Text("Čitaj dalje")),
              ExpansionTile(
                title: const Text("Sve informacije"),
                children: [
                  Text(event.startDatetime.toString()),
                  Text(event.startDatetime.toString()),
                  Text("Parking: ${event.organizer?.hasParking ?? false ? "Dostupno" : "Nedostupno"}"),
                  Text("Ljubimci dobrodošli: ${event.organizer?.petFriendly ?? true ? "Da" : "Ne"}"),
                  Text("Rampa za kolice: ${event.organizer?.wheelchairAccessibleEntry ?? true ? "Dostupno" : "Nedostupno"}"),
                  Text("WC za invalide: ${event.organizer?.wheelchairAccessibleWc ?? true ? "Dostupan" : "Nedostupan"}"),
                ],
              ),
              ExpansionTile(
                title: const Text("Ulaznice"),
                children: [
                  Text("Prijava potrebna: ${event.organizer?.hasParking ?? false ? "Da" : "Ne"}"),
                  FilledButton.icon(
                    icon: const Icon(Icons.payment),
                    onPressed: () {},
                    label: Text("€${event.price}"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getCategoriesAndTypes() {
    var categoriesRaw = event.categories;
    var categories = categoriesRaw.map(
      (e) {
        return Chip(
          label: Text(e.name),
          backgroundColor: Colors.green,
        );
      },
    ).toList();
    if (event.eventType != null) {
      categories.add(
        Chip(
          backgroundColor: Colors.blue,
          label: Text(
            event.eventType?.name ?? '',
          ),
        ),
      );
    }
    return categories;
  }
}

Map<String, dynamic> eventRaw = {
  "id": 471,
  "name": "Izložba BESTIARIVM ANTIQVVM - ZVJERINJAK ANTIKE gostuje u Muzeju ninskih starina Arheološkog muzeja Zadar",
  "description":
      "Izložba Bestiarium Antiquum prezentira predmete iz fundusa Arheološkog muzeja u Zagrebu, mahom one koji nikada nisu bili izlagani niti publicirani u stručnoj literaturi. Predmeti su predstavljeni kroz prizmu namjene, dekoracije, zoomorfnog simbolizma i šireg kulturno-religioznog konteksta, dok vizuali izložbe nude širi pogled na odnos antičkog čovjeka prema životinjama.\nStari Grci i Rimljani živjeli su u svijetu koji je vrvio životinjama. Životinje su bile sastavni dio njihove svakodnevice - od prehrane, rada i trgovine preko rata do književnosti i umjetnosti, sve do ljubavi. Osim što su bile radne, kućne ili pak divlje, životinje su mogle biti i svete, a redovito su i žrtvovane za potrebe vjerskih svetkovina. Rituali rimske državne religije kao i privatni kultovi zahtijevali su žrtvovanje životinja u čast bogova - bikovi, junice, ovce, svinje i koze su tako redovito bili predmetom žrtve. Izvan grada, no i u samim gradovima, pripitomljene životinje držale su se i uzgajale radi koristi i zarade, a divlje životinje lovile su se podjednako iz užitka i kao izvor hrane.\nUčenjaci poput Aristotela, Elijana, Plinija i Seneke proučavali su njihovu anatomiju i ponašanje. Životinje se mogu vidjeti doslovno u svim mogućim oblicima umjetničkog izričaja - utkane u tkaninu, izrezbarene u namještaju, pretvorene u predmete svakodnevne uporabe, naslikane na freskama ili posložene u mozaicima. One su predmeti poslovica, zakletvi i snova. Neke su paradirale pred carevima, živjele u palačama i zabavljale mase u areni. Životinje su u potpunosti prožimale drevni svijet - nisu imale isključivo utilitarnu i ekonomsku funkciju, već su igrale važnu ulogu u grčko-rimskoj religiji i kulturi, simbolici i umjetnosti.\nI u antici, ljudi su uspostavili bliske odnose sa svojim životinjama. Filozofi su često raspravljali o prirodi životinja i ljudi - mnogi su vjerovali da je temeljna razlika u tome što su ljudi sposobni razumijeti, dok životinje nisu. No, je li to zaista tako?\nGrčki i rimski autori kao što su Plutarh, Elijan i Plinije Stariji pisali su o životinjama u djelima o etici, moralu i prirodnoj povijesti. Pisci proze i poezije, no i povjesničari kao što su Homer, Ezop (autor i danas slavnih basni), Herodot, Lukrecije, Opijan, Ovidije, Diodor Sikul i Dion Kasije često su se služili životinjama u svojim prispodobama kako bi ispričali priče i ilustrirali neka ljudska iskustva.\nNajočitija i najdalekosežnija razlika između života u drevnom svijetu i današnjem, mehaniziranom i tehnološki razvijenom modernom dobu vidljiva je u neusporedivo važnijoj i opsežnijoj ulozi koju su u antici imale životinje svih vrsta. Jedva da je postojao neki aspekt ljudske djelatnosti, bilo da je riječ o proizvodnji, kretanju, ratovanju, pa čak i dokolici, u kojima životinje nisu trebale sudjelovati.\n ",
  "description_en": null,
  "event_type": {"id": 3, "name": "Izložba"},
  "categories": [
    {"id": 4, "name": "Muzeji"}
  ],
  "organizer": {
    "id": 98,
    "name": "Arheološki muzej u Zagrebu",
    "organizer_type": {"id": 1, "name": "Gradska ustanova"},
    "location": "Trg Nikole Šubića Zrinskog 19",
    "contact_email": "dmaracic@asmz.hr",
    "has_parking": false,
    "pet_friendly": false,
    "wheelchair_accessible_entry": false,
    "wheelchair_accessible_wc": true,
    "logo_url": null,
    "user": null
  },
  "location": "ARHEOLOŠKI MUZEJ ZADAR - MUZEJ NINSKIH STARINA, TRG KRALJEVAC 8, NIN",
  "start_datetime": "2024-10-30T12:00:00Z",
  "end_datetime": "2025-05-23T12:00:00Z",
  "target_age_groups": [
    {"id": 1, "name": "djeca (0-15)"},
    {"id": 2, "name": "mladi (16-29)"},
    {"id": 3, "name": "odrasli (30+)"}
  ],
  "price": "4.00",
  "tickets_available": 0,
  "registration_required": false,
  "registration_deadline": null,
  "created_at": "2024-11-22T22:04:52Z",
  "updated_at": "2024-11-22T22:04:52Z",
  "tags": [],
  "featured": false,
  "city_district": {"id": 1, "name": "Donji grad"}
};
