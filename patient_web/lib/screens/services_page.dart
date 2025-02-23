import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/constants.dart';
import '../routes/routes_name.dart';

class ServicesPage extends ConsumerStatefulWidget {
  const ServicesPage({super.key});

  @override
  ConsumerState<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends ConsumerState<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Services'),
          backgroundColor: AppColors.blueColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Doctor Selection and Register Button
              _buildServiceButton(
                context,
                'Doctor Selections and Register',
                Icons.person_add,
                () {
                  Navigator.pushReplacementNamed(context, RoutesName.selectDoctor);
                },
              ),
              const SizedBox(height: 20),
              // Book an Appointment Button
              _buildServiceButton(
                context,
                'Book an Appointment',
                Icons.calendar_today,
                () {
                  // Add navigation code for booking appointment
                },
              ),
              const SizedBox(height: 20),
              // Medical Records Access Button
              _buildServiceButton(
                context,
                'Medical Records Access',
                Icons.folder_open,
                () {
                  // Add navigation code for medical records
                },
              ),
              const SizedBox(height: 20),
              // Lab Test Results Button
              _buildServiceButton(
                context,
                'Lab Test Results',
                Icons.medical_services,
                () {
                  // Add navigation code for lab test results
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceButton(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.blueColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.blueColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: AppColors.blueColor, size: 30),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.blueColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: AppColors.blueColor),
          ],
        ),
      ),
    );
  }
}
