
import 'package:flutter_bloc/flutter_bloc.dart';

class PageSnapReview extends Cubit<int>{
  PageSnapReview(int initialState) : super(initialState);

  void pageSnapReview(int count){
    emit(count);
  }

}