class AgreeOnContractModel {
  int statusCode;
  String message;
  dynamic data;
  dynamic pdfUrl;

  AgreeOnContractModel({
    required this.statusCode,
    required this.message,
    required this.data,
    required this.pdfUrl,
  });

  factory AgreeOnContractModel.fromJson(Map<String, dynamic> json) =>
      AgreeOnContractModel(
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"],
        pdfUrl: json["pdfUrl"],
      );
}
