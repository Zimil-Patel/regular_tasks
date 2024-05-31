
import '../../../../utils/constants.dart';

class QuoteModel{
  String? quote;
  String? author;
  List<QuoteModel> modelList = [];

  QuoteModel({this.quote, this.author});

  factory QuoteModel.setList(Map e) => QuoteModel(quote: e['quote'], author: e['author']);

  makeList(){
    modelList = quoteList.map((e) => QuoteModel.setList(e)).toList();
  }
}