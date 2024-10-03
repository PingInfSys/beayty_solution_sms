class SalonModel {
  final SalonData? userData;

  SalonModel({
    this.userData,
  });

  factory SalonModel.fromJson(Map<String, dynamic> json) => SalonModel(
        userData: json["data"] == null ? null : SalonData.fromJson(json["data"]),
      );
}
class SalonData {
    int? id;
    String? salonName;
    dynamic commercialRecordNumber;
    dynamic salonImages;
    String? locationName;
    String? latitude;
    String? longitude;
    String? city;
    String? mobileNumber;
    String? email;
    dynamic iban;
    dynamic bankName;
    dynamic logo;
    dynamic profileImages;
    List<dynamic>? workingHours;
    dynamic holidayWorkingHours;
    dynamic festivalWorkingHours;
    dynamic servicesAndPrices;
    dynamic socialMediaAccounts;
    dynamic website;
    dynamic customerServicePhone;
    dynamic customerServiceEmail;
    String? registeredBy;
    dynamic sellerMobile;
    String? sellerRegistrationDate;
    int? contractPrecentage;
    bool? isAgreeToContract;
    bool? contractAgreement;
    String? pdfUrl;

    SalonData({
         this.id,
         this.salonName,
         this.commercialRecordNumber,
         this.salonImages,
         this.locationName,
         this.latitude,
         this.longitude,
         this.city,
         this.mobileNumber,
         this.email,
         this.iban,
         this.bankName,
         this.logo,
         this.profileImages,
         this.workingHours,
         this.holidayWorkingHours,
         this.festivalWorkingHours,
         this.servicesAndPrices,
         this.socialMediaAccounts,
         this.website,
         this.customerServicePhone,
         this.customerServiceEmail,
         this.registeredBy,
         this.sellerMobile,
         this.sellerRegistrationDate,
         this.contractPrecentage,
         this.isAgreeToContract,
         this.contractAgreement,
         this.pdfUrl,
    });

    factory SalonData.fromJson(Map<String, dynamic> json) => SalonData(
        id: json["id"],
        salonName: json["salonName"],
        commercialRecordNumber: json["commercialRecordNumber"],
        salonImages: json["salonImages"],
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
