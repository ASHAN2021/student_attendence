import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseMethods {
  Future addStudent(Map<String, dynamic> studentData, String id) async {
    return await FirebaseFirestore.instance
        .collection('students')
        .doc(id)
        .set(studentData);
  }

  Future<Stream<QuerySnapshot>> getStudents() async {
    return FirebaseFirestore.instance
        .collection('students')
        .snapshots();
  }

  updateAttendance(String attendancecase, String id)async{
    return await FirebaseFirestore.instance
        .collection('students')
        .doc(id)
        .update({attendancecase: true});
  }
  deleteStudent(String id)async{
    return await FirebaseFirestore.instance
        .collection('students')
        .doc(id)
        .delete();
  }

  Future updateStudentDetails(String id, Map<String, dynamic> studentData) async {
    return await FirebaseFirestore.instance
        .collection('students')
        .doc(id)
        .update(studentData);
  }
}
