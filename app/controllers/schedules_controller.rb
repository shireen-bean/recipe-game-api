class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all

    render json: @schedules
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    render json: @schedule
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      render json: @schedule, status: :created, location: @schedule
    else
      render json: @schedule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(schedule_params)
      head :no_content
    else
      render json: @schedule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy

    head :no_content
  end

  private

    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params[:schedule]
    end
end
