import 'package:bloc_app/data/model/articles_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class ArticleState extends Equatable{}

class ArticleInitialState extends ArticleState{
  @override
  // TODO: implement props
  List<Object> get props => null;

}

class ArticleLoadingState extends ArticleState{
  @override
  // TODO: implement props
  List<Object> get props => null;

}

// ignore: must_be_immutable
class ArticleLoadedState extends ArticleState{
  List<Articles> articles;
  ArticleLoadedState({@required this.articles});
  @override
  // TODO: implement props
  List<Object> get props => [articles];

}

class ArticleErrorState extends ArticleState{
  String message;
  ArticleErrorState({@required this.message});


  @override
  // TODO: implement props
  List<Object> get props => [message];
}