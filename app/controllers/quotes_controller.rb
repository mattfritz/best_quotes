class QuotesController < Rulers::Controller
  def a_quote
    @test = "this is a working test"
    @noun = "winking"
    render :a_quote 
  end

  def exception
    raise "It's a bad one!"
  end
end
