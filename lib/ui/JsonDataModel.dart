
class JsonDataModel{

  int s_id;
  String ProdDate;
  String Line;
  String Shift;
  String ShiftTime;
  String ActOpr;
  String DtWoPDT;
  String AllocatedDt;
  String Downtime;

  JsonDataModel({
    this.s_id,
    this.ProdDate,
    this.Line,
    this.Shift,
    this.ShiftTime,
    this.ActOpr,
    this.DtWoPDT,
    this.AllocatedDt,
    this.Downtime
  });

  JsonDataModel.fromJson(Map<String,dynamic> json)
  {
    s_id = json['s_id'];
    ProdDate = json['ProdDate'];
    Line = json['Line'];
    Shift = json['Shift'];
    ShiftTime = json['ShiftTime'];
    ActOpr = json['ActOpr'];
    DtWoPDT = json['DtWoPDT'];
    AllocatedDt = json['AllocatedDt'];
    Downtime = json['Downtime'];

  }

}