class MovesController < ApplicationController
  before_action :set_move, only: [:show, :edit, :update, :destroy]

  # GET /moves
  # GET /moves.json
  def index
    @moves = Move.all
  end

  # GET /moves/1
  # GET /moves/1.json
  def show
  end

  # GET /moves/new
  def new
    @move = Move.new
    @move.choices.build
    @move.cities.build
  end

  # GET /moves/1/edit
  def edit
  end

  # POST /moves
  # POST /moves.json
  def create
    @move = Move.new(move_params)
    points = @move.weather + @move.budget + @move.safety + @move.recreation
    star = "C"
    if points >= 27
        star = "A"
    elsif points >= 18
        star = "B"
    else
      star = "C"
    end
    
    @move.cities.build    
    cities = City.where( rating: "#{ star }" ) 
    cities.each do |city| 
      @move.cities << city
    end
       # @cities = @move.cities.where( |rating: "#{ star }" )

    respond_to do |format|
      if @move.save
        format.html { redirect_to @move, notice: 'Move was successfully created.' }
        format.json { render action: 'show', status: :created, location: @move }
      else
        format.html { render action: 'new' }
        format.json { render json: @move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moves/1
  # PATCH/PUT /moves/1.json
  def update
    respond_to do |format|
      if @move.update(move_params)
        format.html { redirect_to @move, notice: 'Move was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moves/1
  # DELETE /moves/1.json
  def destroy
    @move.destroy
    respond_to do |format|
      format.html { redirect_to moves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_move
      @move = Move.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def move_params
      params.require(:move).permit(:weather, :budget, :safety, :recreation,:move_id,:city_id)
    end
end

