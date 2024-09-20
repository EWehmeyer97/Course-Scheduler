class RecommandsController < ApplicationController
  before_action :set_recommand, only: [:show, :edit, :update, :destroy]

  # GET /recommands
  # GET /recommands.json
  def index
    @recommands = Recommand.all
  end

  # GET /recommands/1
  # GET /recommands/1.json
  def show
  end

  # GET /recommands/new
  def new
    @recommand = Recommand.new
  end

  def profile
    redirect_to professer_path()
  end
  # GET /recommands/1/edit
  def edit
  end

  # POST /recommands
  # POST /recommands.json
  def create
    @recommand = Recommand.new(recommand_params)

    respond_to do |format|
      if @recommand.save
        format.html { redirect_to @recommand, notice: 'Recommand was successfully created.' }
        format.json { render :show, status: :created, location: @recommand }
      else
        format.html { render :new }
        format.json { render json: @recommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recommands/1
  # PATCH/PUT /recommands/1.json
  def update
    respond_to do |format|
      if @recommand.update(recommand_params)
        format.html { redirect_to @recommand, notice: 'Recommand was successfully updated.' }
        format.json { render :show, status: :ok, location: @recommand }
      else
        format.html { render :edit }
        format.json { render json: @recommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recommands/1
  # DELETE /recommands/1.json
  def destroy
    @recommand.destroy
    respond_to do |format|
      format.html { redirect_to professer_path(current_professor), notice: 'Recommand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommand
      @recommand = Recommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommand_params
      params.require(:recommand).permit(:Professer_id, :Request_flag, :Student_name, :Course_num, :Grader_year, :Reason)
    end
end
