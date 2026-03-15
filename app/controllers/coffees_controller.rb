# frozen_string_literal: true

class CoffeesController < InertiaController
  before_action :set_coffee, only: %i[ show edit update destroy ]

  # GET /coffees
  def index
    @coffees = Coffee.all
    render inertia: {
      coffees: @coffees.map do |coffee|
        serialize_coffee(coffee)
      end
    }
  end

  # GET /coffees/1
  def show
    render inertia: {
      coffee: serialize_coffee(@coffee)
    }
  end

  # GET /coffees/new
  def new
    @coffee = Coffee.new
    render inertia: {
      coffee: serialize_coffee(@coffee)
    }
  end

  # GET /coffees/1/edit
  def edit
    render inertia: {
      coffee: serialize_coffee(@coffee)
    }
  end

  # POST /coffees
  def create
    @coffee = Coffee.new(coffee_params)

    if @coffee.save
      redirect_to @coffee, notice: "Coffee was successfully created."
    else
      redirect_to new_coffee_url, inertia: {errors: @coffee.errors}
    end
  end

  # PATCH/PUT /coffees/1
  def update
    if @coffee.update(coffee_params)
      redirect_to @coffee, notice: "Coffee was successfully updated."
    else
      redirect_to edit_coffee_url(@coffee), inertia: {errors: @coffee.errors}
    end
  end

  # DELETE /coffees/1
  def destroy
    @coffee.destroy!
    redirect_to coffees_url, notice: "Coffee was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_coffee
    @coffee = Coffee.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def coffee_params
    params.require(:coffee).permit(:name, :origin, :roast_level, :roaster)
  end

  def serialize_coffee(coffee)
    coffee.as_json(only: [
      :id, :name, :origin, :roast_level, :roaster
    ])
  end
end
