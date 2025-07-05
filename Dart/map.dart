void main() {
  final list = [
    0,
    1,
    2,
    [3, 4, 5],
  ];

  final Map<String, dynamic> student = {
    'name': 'Akash',
    'id': 2021,
    'department': 'CSE',
    'course': [{'name':'ML',
                'credit': 3},
                {'name':'OOP',
                'credit': 3},
                {'name':'AI',
                'credit': 3},],
  };

  print(student['department']);

  for (var subject in student['course']) {
    print('${subject['name']} - ${subject['credit']}');
  }
}
