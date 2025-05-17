class ContactModal {
  final String message;
  final String id;
  ContactModal(this.message, this.id);
  factory ContactModal.fromJson(jsonData) {
    return ContactModal(jsonData['messager'], jsonData['id']);
  }
}
