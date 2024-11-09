import 'package:google_maps_flutter/google_maps_flutter.dart';

class BranchesLocationModel {
  final String name;
  final int id;
  final LatLng latLng;

  BranchesLocationModel({
    required this.name,
    required this.id,
    required this.latLng,
  });
}

List<BranchesLocationModel> branchesLocation = [
  BranchesLocationModel(
    name: 'Cairo Branch',
    id: 1,
    latLng: const LatLng(30.02351656255252, 31.24355470740745),
  ),
  BranchesLocationModel(
    name: 'Alex Branch',
    id: 2,
    latLng: const LatLng(31.47377193783098, 31.120716294418443),
  ),
  BranchesLocationModel(
    name: 'Giza Branch',
    id: 3,
    latLng: const LatLng(30.012129625376858, 31.213767765424265),
  ),
];
