// ignore_for_file: public_member_api_docs, sort_constructors_first, member-ordering, member-ordering-extended
import 'dart:convert';

class Measuring {
  double dSpeed;
  double uSpeed;
  Measuring({
    this.dSpeed = 0.0,
    this.uSpeed = 0.0,
  });

  Measuring copyWith({
    double? dSpeed,
    double? uSpeed,
  }) {
    return Measuring(
      dSpeed: dSpeed ?? this.dSpeed,
      uSpeed: uSpeed ?? this.uSpeed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dSpeed': dSpeed,
      'uSpeed': uSpeed,
    };
  }

  factory Measuring.fromMap(Map<String, dynamic> map) {
    return Measuring(
      dSpeed: map['dSpeed'] as double,
      uSpeed: map['uSpeed'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Measuring.fromJson(String source) =>
      Measuring.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Measuring(dSpeed: $dSpeed, uSpeed: $uSpeed)';

  @override
  bool operator ==(covariant Measuring other) {
    if (identical(this, other)) return true;
  
    return 
      other.dSpeed == dSpeed &&
      other.uSpeed == uSpeed;
  }

  @override
  int get hashCode => dSpeed.hashCode ^ uSpeed.hashCode;
}
