// ignore_for_file: public_member_api_docs, sort_constructors_first, member-ordering, member-ordering-extended
import 'dart:convert';

class Measuring {
  DateTime? datetime;
  double? lat;
  double? lon;
  String? opName;
  int? cid;
  String? netCode;
  String? netType;
  String? netClass;
  int? rssi;
  double dSpeed;
  double uSpeed;
  String? appVersion;
  Measuring({
    this.datetime,
    this.lat,
    this.lon,
    this.opName,
    this.cid,
    this.netCode,
    this.netType,
    this.netClass,
    this.rssi,
    this.dSpeed=0.0,
    this.uSpeed=0.0,
    this.appVersion,
  });

  Measuring copyWith({
    DateTime? datetime,
    double? lat,
    double? lon,
    String? opName,
    int? cid,
    String? netCode,
    String? netType,
    String? netClass,
    int? rssi,
    double? dSpeed,
    double? uSpeed,
    String? appVersion,
  }) {
    return Measuring(
      datetime: datetime ?? this.datetime,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      opName: opName ?? this.opName,
      cid: cid ?? this.cid,
      netCode: netCode ?? this.netCode,
      netType: netType ?? this.netType,
      netClass: netClass ?? this.netClass,
      rssi: rssi ?? this.rssi,
      dSpeed: dSpeed ?? this.dSpeed,
      uSpeed: uSpeed ?? this.uSpeed,
      appVersion: appVersion ?? this.appVersion,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datetime': datetime?.millisecondsSinceEpoch,
      'lat': lat,
      'lon': lon,
      'opName': opName,
      'cid': cid,
      'netCode': netCode,
      'netType': netType,
      'netClass': netClass,
      'rssi': rssi,
      'dSpeed': dSpeed,
      'uSpeed': uSpeed,
      'appVersion': appVersion,
    };
  }

  factory Measuring.fromMap(Map<String, dynamic> map) {
    return Measuring(
      datetime: map['datetime'] != null ? DateTime.fromMillisecondsSinceEpoch(map['datetime'] as int) : null,
      lat: map['lat'] != null ? map['lat'] as double : null,
      lon: map['lon'] != null ? map['lon'] as double : null,
      opName: map['opName'] != null ? map['opName'] as String : null,
      cid: map['cid'] != null ? map['cid'] as int : null,
      netCode: map['netCode'] != null ? map['netCode'] as String : null,
      netType: map['netType'] != null ? map['netType'] as String : null,
      netClass: map['netClass'] != null ? map['netClass'] as String : null,
      rssi: map['rssi'] != null ? map['rssi'] as int : null,
      dSpeed: map['dSpeed'] as double,
      uSpeed: map['uSpeed'] as double,
      appVersion: map['appVersion'] != null ? map['appVersion'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Measuring.fromJson(String source) => Measuring.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Measuring(datetime: $datetime, lat: $lat, lon: $lon, opName: $opName, cid: $cid, netCode: $netCode, netType: $netType, netClass: $netClass, rssi: $rssi, dSpeed: $dSpeed, uSpeed: $uSpeed, appVersion: $appVersion)';
  }

  @override
  bool operator ==(covariant Measuring other) {
    if (identical(this, other)) return true;
  
    return 
      other.datetime == datetime &&
      other.lat == lat &&
      other.lon == lon &&
      other.opName == opName &&
      other.cid == cid &&
      other.netCode == netCode &&
      other.netType == netType &&
      other.netClass == netClass &&
      other.rssi == rssi &&
      other.dSpeed == dSpeed &&
      other.uSpeed == uSpeed &&
      other.appVersion == appVersion;
  }

  @override
  int get hashCode {
    return datetime.hashCode ^
      lat.hashCode ^
      lon.hashCode ^
      opName.hashCode ^
      cid.hashCode ^
      netCode.hashCode ^
      netType.hashCode ^
      netClass.hashCode ^
      rssi.hashCode ^
      dSpeed.hashCode ^
      uSpeed.hashCode ^
      appVersion.hashCode;
  }
}
