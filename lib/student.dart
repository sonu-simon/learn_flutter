class Student {
  String name;
  String subject;

  // Student(String passedName, String passedSubject) {
  //   name = passedName;
  //   subject = passedSubject;
  // }

  Student({this.name, this.subject});
}

//single object creation
Student objStudent = Student(name: 'Thomas Siby', subject: 'SCT');

//list of objects created
List<Student> studentsList = [
  Student(name: 'Abhishek', subject: 'SCT'),
  Student(name: 'Aparna', subject: 'SCT'),
  Student(name: 'Thomas Siby', subject: 'SCT'),
  Student(name: 'Sara Maria', subject: 'SCT'),
  Student(name: 'Cyril Paul', subject: 'SCT'),
  Student(name: 'ARvin John', subject: 'GT'),
  Student(name: 'Thomas Siby', subject: 'SCT'),
  Student(name: 'Sara Maria', subject: 'SCT'),
  Student(name: 'Cyril Paul', subject: 'SCT'),
  Student(name: 'Sara Maria', subject: 'SCT'),
  Student(name: 'Cyril Paul', subject: 'SCT'),
  Student(name: 'ARvin John', subject: 'GT'),
  Student(name: 'Cyril Paul', subject: 'SCT'),
  Student(name: 'Sara Maria', subject: 'SCT'),
  Student(name: 'Cyril Paul', subject: 'SCT'),
  Student(name: 'ARvin John', subject: 'GT')
];
