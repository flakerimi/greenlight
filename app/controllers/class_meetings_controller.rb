class ClassMeetingsController < ApplicationController
  before_action :set_class_meeting, only: [:show, :edit, :update, :destroy]

  # GET /class_meetings
  # GET /class_meetings.json
  def index
    @class_meetings = ClassMeeting.all
  end

  # GET /class_meetings/1
  # GET /class_meetings/1.json
  def show
  end

  # GET /class_meetings/new
  def new
    @class_meeting = ClassMeeting.new
  end

  # GET /class_meetings/1/edit
  def edit
  end

  # POST /class_meetings
  # POST /class_meetings.json
  def create
    @class_meeting = ClassMeeting.new(class_meeting_params)

    respond_to do |format|
      if @class_meeting.save
        format.html { redirect_to @class_meeting, notice: 'Class meeting was successfully created.' }
        format.json { render :show, status: :created, location: @class_meeting }
      else
        format.html { render :new }
        format.json { render json: @class_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_meetings/1
  # PATCH/PUT /class_meetings/1.json
  def update
    respond_to do |format|
      if @class_meeting.update(class_meeting_params)
        format.html { redirect_to @class_meeting, notice: 'Class meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_meeting }
      else
        format.html { render :edit }
        format.json { render json: @class_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_meetings/1
  # DELETE /class_meetings/1.json
  def destroy
    @class_meeting.destroy
    respond_to do |format|
      format.html { redirect_to class_meetings_url, notice: 'Class meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_meeting
      @class_meeting = ClassMeeting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_meeting_params
      params.require(:class_meeting).permit(:name, :student_id, :teacher_id, :start_time, :end_time)
    end
end
