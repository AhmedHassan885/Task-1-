abstract class ProfileState {}

class UpdateProfileInitial extends ProfileState {}

class UpdateProfileLoading extends ProfileState {}

class UpdateProfileSuccess extends ProfileState {
  final String message;

  UpdateProfileSuccess(this.message);
}

class UpdateProfileError extends ProfileState {
  final String errorMessage;

  UpdateProfileError(this.errorMessage);
}
