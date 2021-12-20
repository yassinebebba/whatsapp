class UserEntity {
  late final String name;
  late final String email;
  late final String phoneNumber;
  late final bool isOnline;
  late final String uId;
  late final String statusId;
  late final String profileUrl;

  UserEntity({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.isOnline,
    required this.uId,
    required this.statusId,
    required this.profileUrl,
  });

  List<Object> get props => [
        name,
        email,
        phoneNumber,
        isOnline,
        uId,
        statusId,
        profileUrl,
      ];
}
