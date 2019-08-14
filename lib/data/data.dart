import 'package:flutter/material.dart';
import 'package:tenant_management_app_landlordview/models/maintenance_contractor_model.dart';
import 'package:tenant_management_app_landlordview/models/maintenance_model.dart';
import 'package:tenant_management_app_landlordview/models/payment_model.dart';
import 'package:tenant_management_app_landlordview/models/property_model.dart';
import 'package:tenant_management_app_landlordview/models/tenancy_model.dart';
import 'package:tenant_management_app_landlordview/models/tenant_model.dart';

List<PropertyModel> getPropertiesCard() {
  List<PropertyModel> propertyCards = [
    PropertyModel(img: 'assets/img/pic1.jpg', rentType: 'unit', propertyNo: '#121', address: "Alam Nusantara, Setia Alam", rental: '2800',
      pendingMaintenance: 2, completedMaintenance: 2, pendingTenancyContracts: 1, signedTenancyContracts: 1, maintenanceIdx: 0),
    PropertyModel(img: 'assets/img/pic2.jpg', rentType: 'room', propertyNo: '#122', address: "The Lake Residence, Puchong", rental: '2200',
      pendingMaintenance: 2, completedMaintenance: 2, pendingTenancyContracts: 1, signedTenancyContracts: 1, maintenanceIdx: 1)
  ];

  return propertyCards;
}

List<List<PaymentModel>> getPaymentsCard() {
  List<List<PaymentModel>> paymentCards = [
    [
      PaymentModel(Icons.monetization_on, Color(0xFFff415f), "June Rental",
        "07-01", "", 350.00, 'rental', false),
      PaymentModel(Icons.receipt, Color(0xFFffd60f), "May Rental",
        "05-01", "05-07", 350.0, 'rental', true),
      PaymentModel(Icons.receipt, Color(0xFFffd60f), "April Rental",
        "04-01", "04-03", 350.00, 'rental', true),
      PaymentModel(Icons.receipt, Color(0xFFffd60f), "March Rental",
        "03-01", "03-06", 350.00, 'rental', true),
    ],
    [
      PaymentModel(Icons.monetization_on, Color(0xFFff415f), "June Rental",
        "07-01", "07-05", 350.00, 'rental', true),
      PaymentModel(Icons.receipt, Color(0xFFffd60f), "May Rental",
        "05-01", "05-07", 350.0, 'rental', true),
      PaymentModel(Icons.receipt, Color(0xFFffd60f), "April Rental",
        "04-01", "04-03", 350.00, 'rental', true),
      PaymentModel(Icons.receipt, Color(0xFFffd60f), "March Rental",
        "03-01", "03-06", 350.00, 'rental', true),
    ]
  ];

  return paymentCards;
}

List<List<MaintenanceModel>> getMaintenancesCard() {
  List<List<MaintenanceModel>> maintenanceCards = 
  [
    [
      MaintenanceModel(Icons.build, "Plumbing Problem",
          "-", "-", Color(0xFFff415f), 350.00, 'Plumbing', false, "#234", false,
          getPropertiesCard()[0], null),
      MaintenanceModel(Icons.build, "Broken Television",
          "05-01", "14.00", Color(0xFFff415f), 350.0, 'Appliances', false, "#233", true,
          getPropertiesCard()[0], getMaintenanceContractorsCard()[0]),
      MaintenanceModel(Icons.build, "Household Cleaning",
          "04-01", "10.00", Color(0xFFff415f), 350.00, 'Household', true, "#232", true,
          getPropertiesCard()[0] ,getMaintenanceContractorsCard()[1]),
      MaintenanceModel(Icons.build, "Broken Wires",
          "03-01", "09.00", Color(0xFFff415f), 350.00, 'Electrical', true, "#231", true,
          getPropertiesCard()[0], getMaintenanceContractorsCard()[1]),
    ],
    [
      MaintenanceModel(Icons.build, "Plumbing Problem",
          "-", "-", Color(0xFFff415f), 350.00, 'Plumbing', false, "#234", false,
          getPropertiesCard()[1], null),
      MaintenanceModel(Icons.build, "Broken Television",
          "05-01", "14.00", Color(0xFFff415f), 350.0, 'Appliances', false, "#233", true,
          getPropertiesCard()[1], getMaintenanceContractorsCard()[0]),
      MaintenanceModel(Icons.build, "Household Cleaning",
          "04-01", "10.00", Color(0xFFff415f), 350.00, 'Household', true, "#232", true,
          getPropertiesCard()[1] ,getMaintenanceContractorsCard()[1]),
      MaintenanceModel(Icons.build, "Broken Wires",
          "03-01", "09.00", Color(0xFFff415f), 350.00, 'Electrical', true, "#231", true,
          getPropertiesCard()[1], getMaintenanceContractorsCard()[1]),
    ],
  ];

  return maintenanceCards;
}

List<TenancyModel> getTenanciesCard() {
  List<TenancyModel> tenancyCards = [
    TenancyModel(Icons.library_books, Color(0xFFff415f), "Tenancy Agreement\n#4325",
        "01-01-2020", "01-01-2021", '1 Year', 350.00, false),
    TenancyModel(Icons.library_books, Color(0xFFff415f), "Tenancy Agreement\n#4421",
        "01-01-2018", "01-01-2020", '2 Years', 350.0, true)
  ];

  return tenancyCards;
}

List<TenantModel> getTenantsCard() {
  List<TenantModel> tenantCards = [
    TenantModel(Color(0xFFff415f), 'Paul', "#121", 'assets/images/myAvatar.png', 0,
        false),
    TenantModel(Color(0xFFff415f), 'James', "#122", 'assets/images/myAvatar.png', 1,
        true)
  ];

  return tenantCards;
}

List<MaintenanceContractorModel> getMaintenanceContractorsCard() {
  List<MaintenanceContractorModel> maintenanceContractorCards = [
    MaintenanceContractorModel('#321', 'Robert', 'assets/images/myAvatar.png', "", 'Plumbing',
        Color(0xFFff415f)),
    MaintenanceContractorModel('#322', 'Marcus', 'assets/images/myAvatar.png', "", 'Appliances',
        Color(0xFFff415f))
  ];

  return maintenanceContractorCards;
}