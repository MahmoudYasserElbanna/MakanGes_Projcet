import 'package:google_maps_flutter/google_maps_flutter.dart';

class BranchesLocationModel {
  final String branchName;
  final int branchId;
  final LatLng locationLatLng;

  BranchesLocationModel({
    required this.branchName,
    required this.branchId,
    required this.locationLatLng,
  });
}

List<BranchesLocationModel> branchesLocation = [
  BranchesLocationModel(
    branchName: 'Cairo Branch',
    branchId: 1,
    locationLatLng: const LatLng(30.02351656255252, 31.24355470740745),
  ),
  BranchesLocationModel(
    branchName: 'Alex Branch',
    branchId: 2,
    locationLatLng: const LatLng(31.47377193783098, 31.120716294418443),
  ),
  BranchesLocationModel(
    branchName: 'Giza Branch',
    branchId: 3,
    locationLatLng: const LatLng(30.012129625376858, 31.213767765424265),
  ),
];
