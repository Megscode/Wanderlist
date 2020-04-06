class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :exception
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy];

  # GET /routes
  # GET /routes.json
  def index
    @routes = Route.hottest
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
  end

  # GET /routes/new
  def new
    @route = Route.new
  end

  # GET /routes/1/edit
  def edit
  end

  # POST /routes
  # POST /routes.json
  def create
    @route = Route.create(route_args)

    respond_to do |format|
      if @route.save
        format.html { redirect_to @route, notice: 'Route was successfully created.' }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to @route, notice: 'Route was successfully updated.' }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.json
  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to routes_url, notice: 'Route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def yours
    @route = Route.where(user_ID: current_user.id)
  end

  def upvote
    route = Route.find_by(id: params[:id])
  
    if current_user.upvoted?(route)
      current_user.remove_vote(route)
    else
      current_user.upvote(route)
    end
    route.calc_hot_score
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
      @place = Place.find_by(id: @route.place1_ID)
      @array = [@route.place1_ID,@route.place2_ID,@route.place3_ID,@route.place4_ID,@route.place5_ID,@route.place6_ID,@route.place7_ID,@route.place8_ID]
      @newarray = @array.select{|place_ID| place_ID.is_a? Integer}
      @places = @newarray.map{|n| Place.find_by(id: n)}
    end

    # Only allow a list of trusted parameters through.
    def route_params
      params.require(:route).permit(:title, :description, :place1_ID).merge(user_id: current_user.id)
    end

    def route_args
      places = Place.create_array_of_many(params[:route])
      placeid_keys = [:place1_ID, :place2_ID, :place3_ID, :place4_ID, :place5_ID, :place6_ID, :place7_ID, :place8_ID]
      route_hash = { title: params['title'], description: params['description'], user_id: current_user.id }
      
      i = 0
      places.each do |place|
        route_hash[placeid_keys[i]] = place.id
        i += 1
      end
      route_hash
    end
end
