class ApiErrorModel {
  ApiErrorModel({required this.status, required this.errorMessage});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      status: json['status'],
      errorMessage: json['Message'],
    );
  }
  final int status;
  final String errorMessage;
}
