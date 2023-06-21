class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name, :prce, :is_best_seller]
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    if
    render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
    else
      render json: {error: 'Cheese not found'}
    end
  end

end
