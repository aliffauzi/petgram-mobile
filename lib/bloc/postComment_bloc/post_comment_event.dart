part of 'post_comment_bloc.dart';

abstract class PostCommentEvent extends Equatable {
  const PostCommentEvent();
  @override
  List<Object> get props => [];
}

class CommentEvent extends PostCommentEvent{
  final String id;
  final String text;

  CommentEvent({this.id, this.text});

  @override
  List<Object> get props => [id,text];
}

class DeleteCommentEvent extends PostCommentEvent{
  final String id;
  final String commentId;

  DeleteCommentEvent({this.id,this.commentId});

  @override
  List<Object> get props => [id,commentId];
}
