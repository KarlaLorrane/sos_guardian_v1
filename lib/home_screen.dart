import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// assets to be used for style
const double sosButtonHeight = 50;

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double sosButtonHeight = 50;

    return Column(
      children: [
        // --- SafeArea ---
        SizedBox(
          height: sosButtonHeight,
          child: SafeArea(
            bottom: false,
            child: Center(
              // logo
              child: Image.asset(
                'assets/images/guardiansoslogo.png',
                height: sosButtonHeight * 2.6,
              ),
            ),
          ),
        ),

        // --- botão SOS ---
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: const Icon(Icons.warning, color: Colors.white),
              label: const Text(
                'SOS',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              onPressed: () {
                // ação de SOS
              },
            ),
          ),
        ),
        
        // --- Google Map ---
        Expanded(
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(-23.5505, -46.6333), // Coordenadas iniciais (São Paulo, por exemplo)
              zoom: 12,
            ),
          ),
        ),
      ],
    );
  }
}
