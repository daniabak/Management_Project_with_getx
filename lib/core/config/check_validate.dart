String? checkValidate(data) {
  if (data!.isEmpty) {
    return 'لا يمكن ترك هذا الحقل فارغ';
  }
  return null;
}