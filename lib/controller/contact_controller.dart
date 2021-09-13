// import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactController extends GetxController {
  @override
  void onInit() {
    _askPermission();

    super.onInit();
  }

  void init() async {
    Iterable<Contact> contacts = await ContactsService.getContacts();
    // print(contacts.elementAt(0).phones?.first.value);

// Get all contacts without thumbnail (faster)
// Iterable<Contact> contacts = await ContactsService.getContacts(withThumbnails: false);

// Android only: Get thumbnail for an avatar afterwards (only necessary if `withThumbnails: false` is used)
// Uint8List avatar = await ContactsService.getAvatar(contact);

// Get contacts matching a string
    Iterable<Contact> johns = await ContactsService.getContacts(query: "Rahul");

    for (var conta in johns) {
      print(conta.displayName);
      print(conta.phones?.first.value);
    }

// Add a contact
// The contact must have a firstName / lastName to be successfully added
// await ContactsService.addContact(newContact);

// Delete a contact
// The contact must have a valid identifier
// await ContactsService.deleteContact(contact);

// Update a contact
// The contact must have a valid identifier
// await ContactsService.updateContact(contact);

// Usage of the native device form for creating a Contact
// Throws a error if the Form could not be open or the Operation is canceled by the User
    // await ContactsService.openContactForm();

// Usage of the native device form for editing a Contact
// The contact must have a valid identifier
// Throws a error if the Form could not be open or the Operation is canceled by the User
// await ContactsService.openExistingContact(contact);
  }

  void _askPermission() async {
    if (await Permission.contacts.isGranted) {
      init();
    } else {
      await Permission.contacts.request();
    }
  }
}
