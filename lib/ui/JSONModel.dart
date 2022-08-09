// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.prodMonth,
    this.prodDate,
    this.plan,
    this.prod,
    this.message,
  });

  String prodMonth;
  DateTime prodDate;
  Plan plan;
  Prod prod;
  dynamic message;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    prodMonth: json["ProdMonth"],
    prodDate: DateTime.parse(json["ProdDate"]),
    plan: Plan.fromJson(json["Plan"]),
    prod: Prod.fromJson(json["Prod"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "ProdMonth": prodMonth,
    "ProdDate": "${prodDate.year.toString().padLeft(4, '0')}-${prodDate.month.toString().padLeft(2, '0')}-${prodDate.day.toString().padLeft(2, '0')}",
    "Plan": plan.toJson(),
    "Prod": prod.toJson(),
    "message": message,
  };
}

class Plan {
  Plan({
    this.daily,
    this.monthly,
  });

  Daily daily;
  Monthly monthly;

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
    daily: Daily.fromJson(json["Daily"]),
    monthly: Monthly.fromJson(json["Monthly"]),
  );

  Map<String, dynamic> toJson() => {
    "Daily": daily.toJson(),
    "Monthly": monthly.toJson(),
  };
}

class Daily {
  Daily({
    this.nextPlan,
    this.a2,
    this.tb,
    this.dailyDo,
    this.w4,
    this.w1,
  });

  NextPlan nextPlan;
  W4Class a2;
  W4Class tb;
  W4Class dailyDo;
  W4Class w4;
  W4Class w1;

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
    nextPlan: NextPlan.fromJson(json["NextPlan"]),
    a2: W4Class.fromJson(json["A2"]),
    tb: W4Class.fromJson(json["TB"]),
    dailyDo: W4Class.fromJson(json["DO"]),
    w4: W4Class.fromJson(json["W4"]),
    w1: W4Class.fromJson(json["W1"]),
  );

  Map<String, dynamic> toJson() => {
    "NextPlan": nextPlan.toJson(),
    "A2": a2.toJson(),
    "TB": tb.toJson(),
    "DO": dailyDo.toJson(),
    "W4": w4.toJson(),
    "W1": w1.toJson(),
  };
}

class W4Class {
  W4Class({
    this.b,
    this.a,
    this.total,
    this.mdl01,
    this.mdl02,
    this.mdl03,
    this.mdl04,
    this.mdl05,
    this.actOpr,
  });

  W4A b;
  W4A a;
  int total;
  int mdl01;
  int mdl02;
  int mdl03;
  int mdl04;
  int mdl05;
  String actOpr;

  factory W4Class.fromJson(Map<String, dynamic> json) => W4Class(
    b: json["B"] == null ? null : W4A.fromJson(json["B"]),
    a: json["A"] == null ? null : W4A.fromJson(json["A"]),
    total: json["Total"] == null ? null : json["Total"],
    mdl01: json["Mdl01"] == null ? null : json["Mdl01"],
    mdl02: json["Mdl02"] == null ? null : json["Mdl02"],
    mdl03: json["Mdl03"] == null ? null : json["Mdl03"],
    mdl04: json["Mdl04"] == null ? null : json["Mdl04"],
    mdl05: json["Mdl05"] == null ? null : json["Mdl05"],
    actOpr: json["ActOpr"] == null ? null : json["ActOpr"],
  );

  Map<String, dynamic> toJson() => {
    "B": b == null ? null : b.toJson(),
    "A": a == null ? null : a.toJson(),
    "Total": total == null ? null : total,
    "Mdl01": mdl01 == null ? null : mdl01,
    "Mdl02": mdl02 == null ? null : mdl02,
    "Mdl03": mdl03 == null ? null : mdl03,
    "Mdl04": mdl04 == null ? null : mdl04,
    "Mdl05": mdl05 == null ? null : mdl05,
    "ActOpr": actOpr == null ? null : actOpr,
  };
}

class W4A {
  W4A({
    this.total,
    this.mdl01,
    this.mdl02,
    this.mdl03,
    this.mdl04,
    this.mdl05,
    this.actOpr,
  });

  int total;
  dynamic mdl01;
  dynamic mdl02;
  int mdl03;
  int mdl04;
  int mdl05;
  String actOpr;

  factory W4A.fromJson(Map<String, dynamic> json) => W4A(
    total: json["Total"] == null ? null : json["Total"],
    mdl01: json["Mdl01"],
    mdl02: json["Mdl02"],
    mdl03: json["Mdl03"] == null ? null : json["Mdl03"],
    mdl04: json["Mdl04"] == null ? null : json["Mdl04"],
    mdl05: json["Mdl05"] == null ? null : json["Mdl05"],
    actOpr: json["ActOpr"] == null ? null : json["ActOpr"],
  );

  Map<String, dynamic> toJson() => {
    "Total": total == null ? null : total,
    "Mdl01": mdl01,
    "Mdl02": mdl02,
    "Mdl03": mdl03 == null ? null : mdl03,
    "Mdl04": mdl04 == null ? null : mdl04,
    "Mdl05": mdl05 == null ? null : mdl05,
    "ActOpr": actOpr == null ? null : actOpr,
  };
}

class NextPlan {
  NextPlan({
    this.a2,
    this.tb,
    this.nextPlanDo,
    this.w4,
    this.w1,
    this.date,
  });

  W4 a2;
  W4 tb;
  W4 nextPlanDo;
  W4 w4;
  W4 w1;
  DateTime date;

  factory NextPlan.fromJson(Map<String, dynamic> json) => NextPlan(
    a2: W4.fromJson(json["A2"]),
    tb: W4.fromJson(json["TB"]),
    nextPlanDo: W4.fromJson(json["DO"]),
    w4: W4.fromJson(json["W4"]),
    w1: W4.fromJson(json["W1"]),
    date: DateTime.parse(json["Date"]),
  );

  Map<String, dynamic> toJson() => {
    "A2": a2.toJson(),
    "TB": tb.toJson(),
    "DO": nextPlanDo.toJson(),
    "W4": w4.toJson(),
    "W1": w1.toJson(),
    "Date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
  };
}

class W4 {
  W4({
    this.b,
    this.a,
  });

  W4Class b;
  W4Class a;

  factory W4.fromJson(Map<String, dynamic> json) => W4(
    b: json["B"] == null ? null : W4Class.fromJson(json["B"]),
    a: json["A"] == null ? null : W4Class.fromJson(json["A"]),
  );

  Map<String, dynamic> toJson() => {
    "B": b == null ? null : b.toJson(),
    "A": a == null ? null : a.toJson(),
  };
}

class Monthly {
  Monthly({
    this.a2,
    this.tb,
    this.monthlyDo,
    this.w4,
    this.w1,
  });

  W4Class a2;
  W4Class tb;
  W4Class monthlyDo;
  W4Class w4;
  W4Class w1;

  factory Monthly.fromJson(Map<String, dynamic> json) => Monthly(
    a2: W4Class.fromJson(json["A2"]),
    tb: W4Class.fromJson(json["TB"]),
    monthlyDo: W4Class.fromJson(json["DO"]),
    w4: W4Class.fromJson(json["W4"]),
    w1: W4Class.fromJson(json["W1"]),
  );

  Map<String, dynamic> toJson() => {
    "A2": a2.toJson(),
    "TB": tb.toJson(),
    "DO": monthlyDo.toJson(),
    "W4": w4.toJson(),
    "W1": w1.toJson(),
  };
}

class Prod {
  Prod({
    this.daily,
    this.cumul,
    this.dailyDiff,
    this.cumulDiff,
    this.cumulNetWorkMin,
    this.avgOprRate,
    this.stoppage,
  });

  Monthly daily;
  Monthly cumul;
  DailyDiff dailyDiff;
  Monthly cumulDiff;
  AvgOprRate cumulNetWorkMin;
  AvgOprRate avgOprRate;
  Stoppage stoppage;

  factory Prod.fromJson(Map<String, dynamic> json) => Prod(
    daily: Monthly.fromJson(json["Daily"]),
    cumul: Monthly.fromJson(json["Cumul"]),
    dailyDiff: DailyDiff.fromJson(json["DailyDiff"]),
    cumulDiff: Monthly.fromJson(json["CumulDiff"]),
    cumulNetWorkMin: AvgOprRate.fromJson(json["CumulNetWorkMin"]),
    avgOprRate: AvgOprRate.fromJson(json["AvgOprRate"]),
    stoppage: Stoppage.fromJson(json["Stoppage"]),
  );

  Map<String, dynamic> toJson() => {
    "Daily": daily.toJson(),
    "Cumul": cumul.toJson(),
    "DailyDiff": dailyDiff.toJson(),
    "CumulDiff": cumulDiff.toJson(),
    "CumulNetWorkMin": cumulNetWorkMin.toJson(),
    "AvgOprRate": avgOprRate.toJson(),
    "Stoppage": stoppage.toJson(),
  };
}

class AvgOprRate {
  AvgOprRate({
    this.a2,
    this.tb,
    this.avgOprRateDo,
    this.w4,
    this.w1,
  });

  double a2;
  double tb;
  int avgOprRateDo;
  dynamic w4;
  double w1;

  factory AvgOprRate.fromJson(Map<String, dynamic> json) => AvgOprRate(
    a2: json["A2"].toDouble(),
    tb: json["TB"].toDouble(),
    avgOprRateDo: json["DO"],
    w4: json["W4"],
    w1: json["W1"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "A2": a2,
    "TB": tb,
    "DO": avgOprRateDo,
    "W4": w4,
    "W1": w1,
  };
}

class DailyDiff {
  DailyDiff({
    this.a2,
    this.dailyDiffDo,
    this.tb,
    this.w1,
  });

  W4Class a2;
  W4Class dailyDiffDo;
  W4Class tb;
  W4Class w1;

  factory DailyDiff.fromJson(Map<String, dynamic> json) => DailyDiff(
    a2: W4Class.fromJson(json["A2"]),
    dailyDiffDo: W4Class.fromJson(json["DO"]),
    tb: W4Class.fromJson(json["TB"]),
    w1: W4Class.fromJson(json["W1"]),
  );

  Map<String, dynamic> toJson() => {
    "A2": a2.toJson(),
    "DO": dailyDiffDo.toJson(),
    "TB": tb.toJson(),
    "W1": w1.toJson(),
  };
}

class Stoppage {
  Stoppage({
    this.a2,
    this.tb,
    this.stoppageDo,
    this.w4,
    this.w1,
  });

  StoppageA2 a2;
  StoppageA2 tb;
  StoppageA2 stoppageDo;
  W4 w4;
  StoppageA2 w1;

  factory Stoppage.fromJson(Map<String, dynamic> json) => Stoppage(
    a2: StoppageA2.fromJson(json["A2"]),
    tb: StoppageA2.fromJson(json["TB"]),
    stoppageDo: StoppageA2.fromJson(json["DO"]),
    w4: W4.fromJson(json["W4"]),
    w1: StoppageA2.fromJson(json["W1"]),
  );

  Map<String, dynamic> toJson() => {
    "A2": a2.toJson(),
    "TB": tb.toJson(),
    "DO": stoppageDo.toJson(),
    "W4": w4.toJson(),
    "W1": w1.toJson(),
  };
}

class StoppageA2 {
  StoppageA2({
    this.b,
    this.a,
  });

  PurpleA b;
  PurpleA a;

  factory StoppageA2.fromJson(Map<String, dynamic> json) => StoppageA2(
    b: PurpleA.fromJson(json["B"]),
    a: PurpleA.fromJson(json["A"]),
  );

  Map<String, dynamic> toJson() => {
    "B": b.toJson(),
    "A": a.toJson(),
  };
}

class PurpleA {
  PurpleA({
    this.details,
    this.dt,
    this.dtwoPdt,
  });

  String details;
  String dt;
  String dtwoPdt;

  factory PurpleA.fromJson(Map<String, dynamic> json) => PurpleA(
    details: json["details"] == null ? null : json["details"],
    dt: json["dt"],
    dtwoPdt: json["dtwoPDT"],
  );

  Map<String, dynamic> toJson() => {
    "details": details == null ? null : details,
    "dt": dt,
    "dtwoPDT": dtwoPdt,
  };
}

