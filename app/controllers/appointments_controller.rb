class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  # GET /appointments or /appointments.json
  def index
    @user = User.find(params[:user_id])
    @appointments = Appointment.where(user_id: params[:user_id])
  end

  # GET /appointments/1 or /appointments/1.json
  def show
    @user = User.first
  end

  # GET /appointments/new
  def new
    @user = User.find(params[:user_id])
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments or /appointments.json
  def create
    @user = User.find(params[:user_id])
    @appointment = Appointment.new(appointment_params)
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to user_appointments_url(@user), notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to user_appointments_url(@user), notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy
    @user = User.first
    respond_to do |format|
      format.html { redirect_to user_appointments_url(@user), notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:user_id, :coach_id, :time)
    end
end
