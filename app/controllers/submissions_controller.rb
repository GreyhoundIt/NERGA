class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]
  before_action :find_submisionedit, only: [:editfromfix]
  before_action :authenticate_user!, except: [ :index, :show ]
  def teamentry
    @venue = params[:fixture]
    @league = params[:league]
    @submissions = Submission.where(user_id: current_user.id, venue: params[:fixture])
    if  @submissions.any?
      redirect_to editfromfix_submissions_path(fixture: @venue, league:@league)
    else
      redirect_to action: "new" , fixture: @venue, league:@league
    end
  end

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all
    respond_to do |format|
    format.html
    format.csv { send_data @submissions.as_csv }
    format.xls { send_data @submissions.as_csv(col_sep: "\t") }
    end
  end

  def fixturelist
  end

  def fixtureshow
    @venue = params[:fixture]
    @submissions = Submission.where(venue: @venue )
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
    @club = current_user.club
    @league = params[:league]
    @venue = params[:fixture]
    @submission = current_user.submissions.build(league: @league, venue: @venue)

  end

  # GET /submissions/1/edit
  def edit
    @club = current_user.club
    @league = params[:league]
    @venue = params[:fixture]
  end

  def editfromfix

     @submission = Submission.find_by(user_id: current_user.id, venue: params[:fixture])
    @club = current_user.club
    @league = params[:league]
    @venue = params[:fixture]
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @club = current_user.club
    @league = params[:league]
    @venue = params[:fixture]
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
      @submission = Submission.find(params[:id])
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :editfromfix }
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

    def find_submisionedit
      @submission = Submission.where(user_id: current_user.id, venue: params[:fixture]).first
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:p1_first_name, :p1_last_name, :p1_handicap, :team, :venue, :league, :p2_first_name, :p2_last_name, :p2_handicap, :p3_first_name, :p3_last_name, :p3_handicap, :p4_first_name, :p4_last_name, :p4_handicap, :p5_first_name, :p5_last_name, :p5_handicap, :p6_first_name, :p6_last_name, :p6_handicap, :p7_first_name, :p7_last_name, :p7_handicap, :p8_first_name, :p8_last_name, :p8_handicap, :g1_first_name, :g1_last_name, :g1_handicap,  :g2_first_name, :g2_last_name, :g2_handicap, :g3_first_name, :g3_last_name, :g3_handicap, :g4_first_name, :g4_last_name, :g4_handicap, :fixture)
    end
end
