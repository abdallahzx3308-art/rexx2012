import 'package:cloud_firestore/cloud_firestore.dart';

class LikeService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // إضافة إعجاب
  Future<void> likeVideo(String videoId, String uid) async {
    try {
      await _firestore
          .collection('videos')
          .doc(videoId)
          .collection('likes')
          .doc(uid)
          .set({'uid': uid, 'timestamp': DateTime.now()});

      // تحديث عدد الإعجابات
      await _firestore.collection('videos').doc(videoId).update({
        'likes': FieldValue.increment(1),
      });
    } catch (e) {
      print('خطأ في إضافة الإعجاب: $e');
    }
  }

  // إزالة إعجاب
  Future<void> unlikeVideo(String videoId, String uid) async {
    try {
      await _firestore
          .collection('videos')
          .doc(videoId)
          .collection('likes')
          .doc(uid)
          .delete();

      // تحديث عدد الإعجابات
      await _firestore.collection('videos').doc(videoId).update({
        'likes': FieldValue.increment(-1),
      });
    } catch (e) {
      print('خطأ في إزالة الإعجاب: $e');
    }
  }

  // التحقق من إعجاب المستخدم
  Future<bool> isLiked(String videoId, String uid) async {
    try {
      final doc = await _firestore
          .collection('videos')
          .doc(videoId)
          .collection('likes')
          .doc(uid)
          .get();

      return doc.exists;
    } catch (e) {
      print('خطأ في التحقق من الإعجاب: $e');
      return false;
    }
  }

  // جلب عدد الإعجابات
  Future<int> getLikesCount(String videoId) async {
    try {
      final snapshot = await _firestore
          .collection('videos')
          .doc(videoId)
          .collection('likes')
          .get();

      return snapshot.docs.length;
    } catch (e) {
      print('خطأ في جلب عدد الإعجابات: $e');
      return 0;
    }
  }
}
