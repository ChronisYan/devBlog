class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @new_item = Portfolio.new
  end

  def create
    @new_item = Portfolio.new(params.require(:portfolio).permit(:title, :tagline, :body))

    respond_to do |format|
      if @new_item.save
        format.html { redirect_to portfolios_path, notice: 'A new portfolio item was created!' }
      else
        format.html { render :new }
      end
    end
  end
end
