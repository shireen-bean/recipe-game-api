class CompletionsController < ApplicationController
  before_action :set_completion, only: [:show, :update, :destroy]

  # GET /completions
  # GET /completions.json
  def index
    @completions = Completion.all

    render json: @completions
  end

  # GET /completions/1
  # GET /completions/1.json
  def show
    render json: @completion
  end

  # POST /completions
  # POST /completions.json
  def create
    @completion = Completion.new(completion_params)

    if @completion.save
      render json: @completion, status: :created, location: @completion
    else
      render json: @completion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /completions/1
  # PATCH/PUT /completions/1.json
  def update
    @completion = Completion.find(params[:id])

    if @completion.update(completion_params)
      head :no_content
    else
      render json: @completion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /completions/1
  # DELETE /completions/1.json
  def destroy
    @completion.destroy

    head :no_content
  end

  private

    def set_completion
      @completion = Completion.find(params[:id])
    end

    def completion_params
      params.require(:completion).permit(:profile_id, :recipe_id, :image)
    end
end
