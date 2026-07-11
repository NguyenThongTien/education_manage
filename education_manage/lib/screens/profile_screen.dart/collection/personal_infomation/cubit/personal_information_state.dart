part of 'personal_information_cubit.dart';

class PersonalInformationState {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String birthDate;
  final String username;
  PersonalInformationState({
    this.firstName = '',
    this.lastName = '',
    this.phoneNumber = '',
    this.email = '',
    this.birthDate = '',
    this.username = '',
  });

  List<Object> get props {
    return [
      email,
      phoneNumber,
      firstName,
      lastName,
      birthDate,
      username,
    ];
  }

  PersonalInformationState copyWith({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? email,
    String? birthDate,
    String? username,
  }) {
    return PersonalInformationState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      birthDate: birthDate ?? this.birthDate,
      username: username ?? this.username,
    );
  }
}

class PersonalInformationInitial extends PersonalInformationState {}
