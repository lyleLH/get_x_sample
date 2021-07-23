import 'package:equatable/equatable.dart';

class Sys extends Equatable {
  final int? type;
  final int? id;
  final double? message;
  final String? country;
  final int? sunrise;
  final int? sunset;

  const Sys({
    this.type,
    this.id,
    this.message,
    this.country,
    this.sunrise,
    this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        type: json['type'] as int?,
        id: json['id'] as int?,
        message: json['message'] as double?,
        country: json['country'] as String?,
        sunrise: json['sunrise'] as int?,
        sunset: json['sunset'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'id': id,
        'message': message,
        'country': country,
        'sunrise': sunrise,
        'sunset': sunset,
      };

  Sys copyWith({
    int? type,
    int? id,
    double? message,
    String? country,
    int? sunrise,
    int? sunset,
  }) {
    return Sys(
      type: type ?? this.type,
      id: id ?? this.id,
      message: message ?? this.message,
      country: country ?? this.country,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      type,
      id,
      message,
      country,
      sunrise,
      sunset,
    ];
  }
}
