class PlanModel{
  final int planId;
  final String planTitle;
  final String planPeriod;
  final String PlanPrice;
  final String planDetails;

  PlanModel({
    required this.planId,
    required this.planTitle,
    required this.planPeriod,
    required this.PlanPrice,
    required this.planDetails,
  });

  factory PlanModel.fromJson(Map<String, dynamic> json){
    return PlanModel(
      planId: json['planId'],
      planTitle: json['planTitle'],
      planPeriod: json['planPeriod'],
      PlanPrice: json['PlanPrice'],
      planDetails: json['planDetails'],
    );
  }
}