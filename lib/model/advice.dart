import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'advice.g.dart';

@JsonSerializable()
class Advice {
  Advice({
    required this.slip,
  });

  Data slip;

  factory Advice.fromJson(Map<String, dynamic> json) => _$AdviceFromJson(json);
  Map<String, dynamic> toJson() => _$AdviceToJson(this);
}

