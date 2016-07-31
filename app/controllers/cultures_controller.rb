class CulturesController < ApplicationController
  before_action :set_culture, only: [:show, :update, :destroy]

  # GET /cultures
  # GET /cultures.json
  def index
    @cultures = Culture.all

    render json: @cultures
  end

  # GET /cultures/1
  # GET /cultures/1.json
  def show
    render json: @culture
  end

  # POST /cultures
  # POST /cultures.json
  def create
    @culture = Culture.new(culture_params)

    if @culture.save
      render json: @culture, status: :created, location: @culture
    else
      render json: @culture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cultures/1
  # PATCH/PUT /cultures/1.json
  def update
    @culture = Culture.find(params[:id])

    if @culture.update(culture_params)
      head :no_content
    else
      render json: @culture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cultures/1
  # DELETE /cultures/1.json
  def destroy
    @culture.destroy

    head :no_content
  end

  private

    def set_culture
      @culture = Culture.find(params[:id])
    end

    def culture_params
      params[:culture]
    end
end
