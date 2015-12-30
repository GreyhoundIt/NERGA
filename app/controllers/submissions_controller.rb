class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all

    respond_to do |format|
    format.html
    format.csv { send_data @submissions.as_csv }
  end

  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    @club = current_user.club.titleize
    @venue = params[:fixture].titleize
    @submission = current_user.submissions.build
  end

  # GET /submissions/1/edit
  def edit
    @club = @submission.p1_club.titleize
    @venue = @submission.p1_venue.titleize
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = current_user.submissions.build(submission_params)


    respond_to do |format|
      if @submission.save
        format.html { redirect_to @submission, notice: 'Submission was successfully created.' }
        format.json { render :show, status: :created, location: @submission }
      else
        format.html { render :new }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url, notice: 'Submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:p1_first_name, :p1_last_name, :p1_handicap, :p1_club, :p1_venue, :p1_position, :p2_first_name, :p2_last_name, :p2_handicap, :p2_club, :p2_venue, :p2_position, :p3_first_name, :p3_last_name, :p3_handicap, :p3_club, :p3_venue, :p3_position, :p4_first_name, :p4_last_name, :p4_handicap, :p4_club, :p4_venue, :p4_position, :p5_first_name, :p5_last_name, :p5_handicap, :p5_club, :p5_venue, :p5_position, :p6_first_name, :p6_last_name, :p6_handicap, :p6_club, :p6_venue, :p6_position, :p7_first_name, :p7_last_name, :p7_handicap, :p7_club, :p7_venue, :p7_position, :p8_first_name, :p8_last_name, :p8_handicap, :p8_club, :p8_venue, :p8_position, :g1_first_name, :g1_last_name, :g1_handicap, :g1_club, :g1_venue, :g1_position, :g2_first_name, :g2_last_name, :g2_handicap, :g2_club, :g2_venue, :g2_position, :fixture)
    end
end
