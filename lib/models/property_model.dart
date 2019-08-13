class PropertyModel {
  final String img;
  //final String name;
  final String rentType;
  final String propertyNo;
  final String address;
  //final String priceOff;
  final String rental;
  final int pendingMaintenance;
  final int completedMaintenance;
  final int pendingTenancyContracts;
  final int signedTenancyContracts;

  PropertyModel({this.img, this.rentType, this.propertyNo, this.address, this.rental,
    this.pendingMaintenance ,this.completedMaintenance, this.pendingTenancyContracts,
    this.signedTenancyContracts});
}