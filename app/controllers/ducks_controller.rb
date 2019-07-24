class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update, :destroy]


  def index
    @ducks = Duck.all
  end

  def show

  end


  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    @duck = Duck.new(duck_params)
    if @duck.valid?
      @duck.save
      redirect_to duck_path(@duck)
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to new_duck_path(@duck)
    end
  end

  def edit
    @students = Student.all
  end

  def update
    if @duck.update(duck_params)
      @duck.save
      redirect_to duck_path(@duck)
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to edit_duck_path(@duck)
    end
  end

  def destroy

  end


  private

    def find_duck
      @duck = Duck.find(params[:id])
    end

    def duck_params
      params.require(:duck).permit(:name, :description, :student_id)
    end

end
