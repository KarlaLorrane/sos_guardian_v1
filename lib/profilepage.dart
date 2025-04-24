import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nameController = TextEditingController();
  final _medicalConditionsController = TextEditingController();
  final _vehicleInfoController = TextEditingController();

  String? _selectedBloodType;

  final List<String> _bloodTypes = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Personal Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Nome
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Full Name",
                hintText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Tipo Sanguíneo
            DropdownButtonFormField<String>(
              value: _selectedBloodType,
              decoration: const InputDecoration(
                labelText: "Blood Type",
                border: OutlineInputBorder(),
              ),
              items: _bloodTypes
                  .map((type) => DropdownMenuItem(
                value: type,
                child: Text(type),
              ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedBloodType = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Condições médicas
            TextField(
              controller: _medicalConditionsController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: "Medical Conditions",
                hintText: "List any medical conditions",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Veículo
            const Text(
              "Vehicle Information",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _vehicleInfoController,
              decoration: const InputDecoration(
                hintText: "Make/Model",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
