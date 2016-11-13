class RepresentantesController < ApplicationController
  before_action :set_representante, only: [:show, :edit, :update, :destroy]

  # GET /representantes
  # GET /representantes.json
  def index
    @representantes = Representante.all
  end

  # GET /representantes/1
  # GET /representantes/1.json
  def show
  end

  # GET /representantes/new
  def new
    @representante = Representante.new
  end

  # GET /representantes/1/edit
  def edit
  end

  # POST /representantes
  # POST /representantes.json
  def create
    @representante = Representante.new(representante_params)

    respond_to do |format|
      if @representante.save
        format.html { redirect_to @representante, notice: 'Representante was successfully created.' }
        format.json { render :show, status: :created, location: @representante }
      else
        format.html { render :new }
        format.json { render json: @representante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representantes/1
  # PATCH/PUT /representantes/1.json
  def update
    respond_to do |format|
      if @representante.update(representante_params)
        format.html { redirect_to @representante, notice: 'Representante was successfully updated.' }
        format.json { render :show, status: :ok, location: @representante }
      else
        format.html { render :edit }
        format.json { render json: @representante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representantes/1
  # DELETE /representantes/1.json
  def destroy
    @representante.destroy
    respond_to do |format|
      format.html { redirect_to representantes_url, notice: 'Representante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representante
      @representante = Representante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representante_params
      params.require(:representante).permit(:fabricante_id)
    end
end
