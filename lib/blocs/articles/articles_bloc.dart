import 'package:bloc_app/blocs/articles/articles_event.dart';
import 'package:bloc_app/blocs/articles/articles_state.dart';
import 'package:bloc_app/data/model/articles_model.dart';
import 'package:bloc_app/data/repository/articles_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleBloc extends Bloc<ArticleEvent,ArticleState>{
  ArticleRepository repository;

  ArticleBloc({@required this.repository});
  @override
  // TODO: implement initialState
  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async*{
    // TODO: implement mapEventToState
    if(event is fetchArticlesEvents){

      yield ArticleLoadingState();
      try{
        List<Articles> articles = await repository.getArticles();
        yield ArticleLoadedState(articles: articles);
      }catch (e) {
        yield ArticleErrorState(message: e.toString());
      }
}
  }

}