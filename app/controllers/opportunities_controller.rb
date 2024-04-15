class OpportunitiesController < ApplicationController
  def index
    @opportunities = Opportunity.all 
    render json: @opportunities
  end

  def show
    @opportunity = Opportunity.find_by(id: params[:id]) || {}
    render json: @opportunity
  end

  def create
    params[:opportunity].permit!
    @opportunity = Opportunity.new(params[:opportunity])
  
    if @opportunity.save
      render :ok
    else
      render json: { errors: @opportunity.errors }
    end
  end
end
