import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<FavoriteEvent>((event, emit) {
      User? user = FirebaseAuth.instance.currentUser;
      FirebaseFirestore.instance
          .collection('wishlist')
          .doc(user!.uid)
          .collection('movies')
          .doc()
          .set({
        "title": event.title,
        "image": event.image,
        "description": event.description,
        "price": event.price,
        'rating': event.rating,
        'ratingcount': event.ratingcount,
      });
      emit(FavoriteState());
    });
  }
}
