// ignore_for_file: public_member_api_docs, sort_constructors_first, member-ordering, member-ordering-extended
import 'dart:convert';

class Measuring {
  double? lat;
  double? lon;
  String? opName;
  String? opCode;
  String? netType;
  String? netClass;
  String? cid;
  String? rssi;
  double dSpeed;
  double uSpeed;
  String? appVersion;
  Measuring({
    this.lat,
    this.lon,
    this.opName,
    this.opCode,
    this.netType,
    this.netClass,
    this.cid,
    this.rssi,
    this.dSpeed = 0.0,
    this.uSpeed = 0.0,
    this.appVersion,
  });

  Measuring copyWith({
    double? lat,
    double? lon,
    String? opName,
    String? opCode,
    String? netType,
    String? netClass,
    String? cid,
    String? rssi,
    double? dSpeed,
    double? uSpeed,
    String? appVersion,
  }) {
    return Measuring(
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      opName: opName ?? this.opName,
      opCode: opCode ?? this.opCode,
      netType: netType ?? this.netType,
      netClass: netClass ?? this.netClass,
      cid: cid ?? this.cid,
      rssi: rssi ?? this.rssi,
      dSpeed: dSpeed ?? this.dSpeed,
      uSpeed: uSpeed ?? this.uSpeed,
      appVersion: appVersion ?? this.appVersion,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lat': lat,
      'lon': lon,
      'opName': opName,
      'opCode': opCode,
      'netType': netType,
      'netClass': netClass,
      'cid': cid,
      'rssi': rssi,
      'dSpeed': dSpeed,
      'uSpeed': uSpeed,
      'appVersion': appVersion,
    };
  }

  factory Measuring.fromMap(Map<String, dynamic> map) {
    return Measuring(
      lat: map['lat'] != null ? map['lat'] as double : null,
      lon: map['lon'] != null ? map['lon'] as double : null,
      opName: map['opName'] != null ? map['opName'] as String : null,
      opCode: map['opCode'] != null ? map['opCode'] as String : null,
      netType: map['netType'] != null ? map['netType'] as String : null,
      netClass: map['netClass'] != null ? map['netClass'] as String : null,
      cid: map['cid'] != null ? map['cid'] as String : null,
      rssi: map['rssi'] != null ? map['rssi'] as String : null,
      dSpeed: map['dSpeed'] as double,
      uSpeed: map['uSpeed'] as double,
      appVersion: map['appVersion'] != null ? map['appVersion'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Measuring.fromJson(String source) =>
      Measuring.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Measuring(lat: $lat, lon: $lon, opName: $opName, opCode: $opCode, netType: $netType, netClass: $netClass, cid: $cid, rssi: $rssi, dSpeed: $dSpeed, uSpeed: $uSpeed, appVersion: $appVersion)';
  }

  @override
  bool operator ==(covariant Measuring other) {
    if (identical(this, other)) return true;
  
    return 
      other.lat == lat &&
      other.lon == lon &&
      other.opName == opName &&
      other.opCode == opCode &&
      other.netType == netType &&
      other.netClass == netClass &&
      other.cid == cid &&
      other.rssi == rssi &&
      other.dSpeed == dSpeed &&
      other.uSpeed == uSpeed &&
      other.appVersion == appVersion;
  }

  @override
  int get hashCode {
    return lat.hashCode ^
      lon.hashCode ^
      opName.hashCode ^
      opCode.hashCode ^
      netType.hashCode ^
      netClass.hashCode ^
      cid.hashCode ^
      rssi.hashCode ^
      dSpeed.hashCode ^
      uSpeed.hashCode ^
      appVersion.hashCode;
  }
}
