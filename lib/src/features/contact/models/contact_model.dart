import 'package:equatable/equatable.dart';

class ContactModel extends Equatable {
  final String location;
  final String weekendOpeningHours;
  final String weekdaysOpeningHours;
  final String phoneNumber;
  final String email;

  const ContactModel({
    required this.location,
    required this.weekdaysOpeningHours,
    required this.weekendOpeningHours,
    required this.phoneNumber,
    required this.email,
  });

  @override
  List<Object> get props => [
        weekdaysOpeningHours,
        weekendOpeningHours,
        phoneNumber,
        email,
      ];
}

List<ContactModel> contacts = <ContactModel>[
  const ContactModel(
    location: 'Mazaszalkowska 221 c, Warsaw',
    weekdaysOpeningHours: '6 pm - 12 am',
    weekendOpeningHours: '8 pm - 10 am',
    phoneNumber: 'car@rental.gmail.com',
    email: '+48 223 553 5593',
  ),
  const ContactModel(
    location: 'Mazaszalkowska 221 c, Warsaw',
    weekdaysOpeningHours: '6 pm - 12 am',
    weekendOpeningHours: '8 pm - 10 am',
    phoneNumber: 'car@rental.gmail.com',
    email: '+48 223 553 5593',
  ),
  const ContactModel(
    location: 'Mazaszalkowska 221 c, Warsaw',
    weekdaysOpeningHours: '6 pm - 12 am',
    weekendOpeningHours: '8 pm - 10 am',
    phoneNumber: 'car@rental.gmail.com',
    email: '+48 223 553 5593',
  ),
  const ContactModel(
    location: 'Mazaszalkowska 221 c, Warsaw',
    weekdaysOpeningHours: '6 pm - 12 am',
    weekendOpeningHours: '8 pm - 10 am',
    phoneNumber: 'car@rental.gmail.com',
    email: '+48 223 553 5593',
  ),
];
