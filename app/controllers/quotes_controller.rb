class QuotesController < Rulers::Controller
  def index
    @quotes = FileModel.all
    render :index
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth one k pixels",
      "attribution" => "Me" 
    }
    @quote = FileModel.create(attrs)
    render :quote
  end

  def update_quote
    raise "NOT A POST!" unless env["REQUEST_METHOD"] == "POST"
    @params = request.params
    FileModel.update(@params["id"], @params["attribs"])
  end

  def a_quote
    @test = "this is a working test"
    @noun = "winking"
    render :a_quote 
  end

  def quotes_by
    @params = request.params
    @quotes = FileModel.find_all_by_submitter(@params["attribs"])
    render :index
  end

  def method_missing_test
    @params = request.params
    @quotes = FileModel.find_all_by_attribution(@params["attribs"])
    render :index
  end

  def quote_1
    @quote = FileModel.find(1)
    render :quote
  end

  def exception
    raise "It's a bad one!"
  end
end
