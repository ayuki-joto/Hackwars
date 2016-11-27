class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all
    @ev_perspicuity = @ev_device = @ev_voice = @ev_concern = @ev_speed = 0
    @evaluations.each do |evaluation|
      @ev_perspicuity += evaluation.perspicuity.to_f / @evaluations.size
      @ev_device += evaluation.device.to_f / @evaluations.size
      @ev_voice += evaluation.voice.to_f / @evaluations.size
      @ev_concern += evaluation.concern.to_f / @evaluations.size
      @ev_speed += evaluation.speed.to_f / @evaluations.size
    end
    @ev_perspicuity = @ev_perspicuity.round(2)
    @ev_device = @ev_device.round(2)
    @ev_voice = @ev_voice.round(2)
    @ev_concern = @ev_concern.round(2)
    @ev_speed = @ev_speed.round(2)
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
  end

  # GET /evaluations/new
  def new
    @evaluation = Evaluation.new
  end

  # GET /evaluations/1/edit
  def edit
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(evaluation_params)

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation }
      else
        format.html { render :new }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    respond_to do |format|
      if @evaluation.update(evaluation_params)
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation }
      else
        format.html { render :edit }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_url, notice: 'Evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params.require(:evaluation).permit(:perspicuity, :device, :voice, :concern, :speed)
    end
end
