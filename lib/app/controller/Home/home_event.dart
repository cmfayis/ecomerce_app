part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class FavoriteEvent extends HomeEvent {
  final title;
  final description;
  final price;
  final image;
  final rating;
  final ratingcount;
  FavoriteEvent(
    
      {required this.description,
      required this.image,
      required this.price,
      required this.title,
      required this.rating,
      required this.ratingcount});
}
