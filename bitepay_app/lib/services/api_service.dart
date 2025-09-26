// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class ApiService {
//   static final FirebaseAuth _auth = FirebaseAuth.instance;
//   static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Signup user
//   static Future<Map<String, dynamic>> signup(
//       String name, String email, String password, String role) async {
//     try {
//       UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);

//       await _firestore.collection('users').doc(email).set({
//         'name': name,
//         'email': email,
//         'role': role,
//         'createdAt': FieldValue.serverTimestamp(),
//       });

//       return {'success': true};
//     } catch (e) {
//       return {'success': false, 'message': e.toString()};
//     }
//   }

//   // Login user
//   static Future<Map<String, dynamic>> login(
//       String email, String password, String role) async {
//     try {
//       UserCredential userCredential =
//           await _auth.signInWithEmailAndPassword(email: email, password: password);

//       // Get user role from Firestore
//       DocumentSnapshot doc = await _firestore.collection('users').doc(email).get();
//       if (!doc.exists) return {'success': false, 'message': 'User not found'};
//       if (doc['role'] != role) return {'success': false, 'message': 'Role mismatch'};

//       return {'success': true};
//     } catch (e) {
//       return {'success': false, 'message': e.toString()};
//     }
//   }
// }
