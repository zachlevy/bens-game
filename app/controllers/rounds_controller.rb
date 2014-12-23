class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :edit, :update, :destroy]

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
  end

  # GET /rounds/new
  def new
    @round = Round.new
    if params[:game_id]
      # get the game
      @game = Game.find(params[:game_id])
      puts "===== game ====="
      puts @game
    end
    # get a random question
    @question = Question.all.order("RANDOM()").last
    puts "===== question ====="
    puts @question

  end

  # GET /rounds/1/edit
  def edit
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = Round.new()
    @round.game_id = params[:game_id]
    puts "===== game_id ====="
    if params[:game_id]
      @game_id = params[:game_id].to_i
      puts params[:game_id]
    else
      puts "no game_id"
    end
    puts "===== question ====="
    if params[:question_id]
      puts params[:question_id]
    else
      puts "no question_id"
    end
    if params[:answers]
      answers = JSON.parse params[:answers]
      puts "===== answers ====="
      puts answers.inspect
      # for each answer
      answers.each do |answer|
        @user_id = answer["user"].to_i
        @correct = answer["correct"]
        puts "===== answer ====="
        puts answer.inspect
        @answer = Answer.new(answer_params)
        @answer.save
      end
    else
      puts "no answers"
    end

    respond_to do |format|
      if @round.save
        format.html { redirect_to "/rounds/new/" + @game_id.to_s, notice: 'Round was successfully created.' }
        format.json { render :show, status: :created, location: @round }
      else
        format.html { render :new }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    respond_to do |format|
      if @round.update(round_params)
        format.html { redirect_to @round, notice: 'Round was successfully updated.' }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round.destroy
    respond_to do |format|
      format.html { redirect_to rounds_url, notice: 'Round was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_params
      params.require(:round).permit(:game_id, :answers)
    end

    def answer_params
      params.permit(:question_id,
                    :correct,
                    :user_id,
                    :game_id).merge(:correct => @correct,
                                    :user_id => @user_id,
                                    :game_id => @game_id)
    end
end
