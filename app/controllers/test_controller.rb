class TestController < ApplicationController
  
  def index
    @testlist=Test.all
  end

  def show
    @testShow = Test.find(params[:id])
  end

  def delete
    @testDelete = Test.Destroy()
  end

  
end