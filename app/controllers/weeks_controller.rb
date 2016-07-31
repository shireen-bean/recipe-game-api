class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :update, :destroy]

  # GET /weeks
  # GET /weeks.json
  def index
    @weeks = Week.all

    render json: @weeks
  end

  # GET /weeks/1
  # GET /weeks/1.json
  def show
    render json: @week
  end

  # POST /weeks
  # POST /weeks.json
  def create
    @week = Week.new(week_params)

    if @week.save
      render json: @week, status: :created, location: @week
    else
      render json: @week.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weeks/1
  # PATCH/PUT /weeks/1.json
  def update
    @week = Week.find(params[:id])

    if @week.update(week_params)
      head :no_content
    else
      render json: @week.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weeks/1
  # DELETE /weeks/1.json
  def destroy
    @week.destroy

    head :no_content
  end

  private

    def set_week
      @week = Week.find(params[:id])
    end

    def week_params
      params[:week]
    end
end
