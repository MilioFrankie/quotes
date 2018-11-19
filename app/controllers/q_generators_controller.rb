class QGeneratorsController < ApplicationController
  before_action :set_q_generator, only: [:show, :edit, :update]

  def index
    @q_generators = current_user.q_generators
  end

  def show
  end

  def new
    @q_generator= q_generator.new
  end

  def create
    @q_generator = current_user.q_generators.new(q_generator_params)
    if @q_generator.save
      redirect_to q_generators_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @q_generator.update(q_generator_params)
      redirect_to q_generators_path
    else
      render :edit
    end
  end

  def destroy
    @q_generator.destroy
    redirect_to q_generators_path
  end

  private

  def q_generator_params
  params.require(:q_generator).permit(:name, :message)
  end

  def set_q_generator
    @q_generator = current_user.q_generators.find(params[:id])
  end

end
