part of 'pages.dart';

class PetaLokasiPage extends StatefulWidget {
  final double longitude;
  final double latitude;
  final int idWisata;
  final String image;
  final String name;
  final String lokasi;
  final String deskripsi;
  final int price;
  final double rate;
  const PetaLokasiPage({
    Key? key,
    required this.longitude,
    required this.latitude,
    required this.idWisata,
    required this.image,
    required this.name,
    required this.lokasi,
    required this.deskripsi,
    required this.price,
    required this.rate,
  }) : super(key: key);

  @override
  State<PetaLokasiPage> createState() => _PetaLokasiPageState();
}

class _PetaLokasiPageState extends State<PetaLokasiPage> {
  final Completer<GoogleMapController> _controller = Completer();
  
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.914744, 107.609810),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-6.9040283, 107.579564),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.read<RoutesCubit>().emit(RoutesDetailScreen(
                  widget.longitude.toString(),
                  widget.latitude.toString(),
                  widget.idWisata,
                  widget.image,
                  widget.name,
                  widget.lokasi,
                  widget.deskripsi,
                  widget.price,
                  widget.rate,
                ));
          },
          icon: const Icon(
            Icons.arrow_circle_left,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          widget.name,
          style: whiteTextStyleMontserrat,
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: WillPopScope(
        onWillPop: () async {
          context.read<RoutesCubit>().emit(RoutesDetailScreen(
                widget.longitude.toString(),
                widget.latitude.toString(),
                widget.idWisata,
                widget.image,
                widget.name,
                widget.lokasi,
                widget.deskripsi,
                widget.price,
                widget.rate,
              ));
          return false;
        },
        child: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 40,
          bottom: 20,
        ),
        child: FloatingActionButton.extended(
          onPressed: _goToTheLake,
          label: Text('Tekan untuk\nmengetahui lokasi',
              style: whiteTextStyleMontserrat),
          icon: const Icon(
            Icons.directions_boat,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
