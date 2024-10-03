class BeautyModel {
  Data data;

  BeautyModel({
    required this.data,
  });

  factory BeautyModel.fromJson(Map<String, dynamic> json) => BeautyModel(
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  int id;
  String beauticianName;
  dynamic licenseNumber;
  dynamic licenseImage;
  dynamic nationalId;
  dynamic nationality;
  dynamic profilePicture;
  dynamic previousWorkImages;
  String locationName;
  String latitude;
  String longitude;
  String city;
  String mobileNumber;
  String email;
  dynamic iban;
  dynamic bankName;
  dynamic logo;
  dynamic profileImages;
  List<dynamic> workingHours;
  dynamic holidayWorkingHours;
  dynamic festivalWorkingHours;
  dynamic servicesAndPrices;
  dynamic socialMediaAccounts;
  dynamic website;
  dynamic customerServicePhone;
  dynamic customerServiceEmail;
  String registeredBy;
  dynamic sellerMobile;
  dynamic sellerRegistrationDate;
  int contractPrecentage;
  bool isAgreeToContract;
  bool contractAgreement;
  String pdfUrl;

  Data({
    required this.id,
    required this.beauticianName,
    required this.licenseNumber,
    required this.licenseImage,
    required this.nationalId,
    required this.nationality,
    required this.profilePicture,
    required this.previousWorkImages,
    required this.locationName,
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.mobileNumber,
    required this.email,
    required this.iban,
    required this.bankName,
    required this.logo,
    required this.profileImages,
    required this.workingHours,
    required this.holidayWorkingHours,
    required this.festivalWorkingHours,
    required this.servicesAndPrices,
    required this.socialMediaAccounts,
    required this.website,
    required this.customerServicePhone,
    required this.customerServiceEmail,
    required this.registeredBy,
    required this.sellerMobile,
    required this.sellerRegistrationDate,
    required this.contractPrecentage,
    required this.isAgreeToContract,
    required this.contractAgreement,
    required this.pdfUrl,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        beauticianName: json["beauticianName"],
        licenseNumber: json["licenseNumber"],
        licenseImage: json["licenseImage"],
        nationalId: json["nationalId"],
        nationality: json["nationality"],
        profilePicture: json["profilePicture"],
        previousWorkImages: json["previousWorkImages"],
        locationName: json["locationName"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        city: json["city"],
        mobileNumber: json["mobileNumber"],
        email: json["email"],
        iban: json["iban"],
        bankName: json["bankName"],
        logo: json["logo"],
        profileImages: json["profileImages"],
        workingHours: List<dynamic>.from(json["workingHours"].map((x) => x)),
        holidayWorkingHours: json["holidayWorkingHours"],
        festivalWorkingHours: json["festivalWorkingHours"],
        servicesAndPrices: json["servicesAndPrices"],
        socialMediaAccounts: json["socialMediaAccounts"],
        website: json["website"],
        customerServicePhone: json["customerServicePhone"],
        customerServiceEmail: json["customerServiceEmail"],
        registeredBy: json["registeredBy"],
        sellerMobile: json["sellerMobile"],
        sellerRegistrationDate: json["sellerRegistrationDate"],
        contractPrecentage: json["contractPrecentage"],
        isAgreeToContract: json["isAgreeToContract"],
        contractAgreement: json["contractAgreement"],
        pdfUrl: json["pdfUrl"],
      );
}
