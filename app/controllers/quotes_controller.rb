class QuotesController < Rulers::Controller
  def index
    @quotes = FileModel.all
    render :index
  end

  def a_quote
    @test = "this is a working test"
    @noun = "winking"
    render :a_quote 
  end

  def quote_1
    @quote = FileModel.find(1)
    render :quote
  end

  def exception
    raise "It's a bad one!"
  end
end
