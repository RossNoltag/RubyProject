class TestController < ApplicationController
  
  def index
    @testlist=Test.all 
  end

  def show
    @test = Test.find(params[:id])
    @id = params[:id]
  end

  def new
    @newTest = Test.new
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test
    else
      render :new, status: :uprocessable_entity
    end
  end

  def edit
    @test = Test.find(params[:id])#used for when building the form
  end

  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to @test
    else 
      render :edit, status: uprocessable_entity
    end
  end

  def destroy
    @test = Article.find(params[:id])
    @test.destroy
    
    redirect_to root_path, status: :see_other
  end

  private
  def test_params
    params.require(:test).permit(:title, :body)
  end
  
end