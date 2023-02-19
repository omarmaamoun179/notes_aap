part of 'addnote_cubit.dart';

abstract class AddnoteState {}

class AddnoteInitial extends AddnoteState {}

class AddnoteLoading extends AddnoteState {}

class AddnoteSuccess extends AddnoteState {}

class AddnoteFailed extends AddnoteState {
  String errMessage;
  AddnoteFailed({required this.errMessage});
}
