class Practicantes {
  final int practicanteVal;
  final String practicanteAnio;
  final String colorVal;
  Practicantes(this.practicanteVal,this.practicanteAnio,this.colorVal);

  Practicantes.fromMap(Map<String, dynamic> map)
      : assert(map['practicanteVal'] != null),
        assert(map['practicanteAnio'] != null),
        assert(map['colorVal'] != null),
        practicanteVal = map['practicanteVal'],
        colorVal = map['colorVal'],
        practicanteAnio=map['practicanteAnio'];

  @override
  String toString() => "Record<$practicanteVal:$practicanteAnio:$colorVal>";
}