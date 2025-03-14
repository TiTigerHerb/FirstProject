import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_img" field.
  String? _postImg;
  String get postImg => _postImg ?? '';
  bool hasPostImg() => _postImg != null;

  // "post_name" field.
  String? _postName;
  String get postName => _postName ?? '';
  bool hasPostName() => _postName != null;

  // "post_topic" field.
  String? _postTopic;
  String get postTopic => _postTopic ?? '';
  bool hasPostTopic() => _postTopic != null;

  // "post_date" field.
  DateTime? _postDate;
  DateTime? get postDate => _postDate;
  bool hasPostDate() => _postDate != null;

  void _initializeFields() {
    _postImg = snapshotData['post_img'] as String?;
    _postName = snapshotData['post_name'] as String?;
    _postTopic = snapshotData['post_topic'] as String?;
    _postDate = snapshotData['post_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postImg,
  String? postName,
  String? postTopic,
  DateTime? postDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_img': postImg,
      'post_name': postName,
      'post_topic': postTopic,
      'post_date': postDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.postImg == e2?.postImg &&
        e1?.postName == e2?.postName &&
        e1?.postTopic == e2?.postTopic &&
        e1?.postDate == e2?.postDate;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality()
      .hash([e?.postImg, e?.postName, e?.postTopic, e?.postDate]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
