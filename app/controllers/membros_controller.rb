class MembrosController < ApplicationController
  before_action :set_membro, only: %i[ show edit update destroy ]

  # GET /membros or /membros.json
  def index
    @membros = Membro.all
  end

  # GET /membros/1 or /membros/1.json
  def show
  end

  # GET /membros/new
  def new
    @membro = Membro.new
  end

  # GET /membros/1/edit
  def edit
  end

  # POST /membros or /membros.json
  def create
    @membro = Membro.new(membro_params)

    respond_to do |format|
      if @membro.save
        format.html { redirect_to membro_url(@membro), notice: "Membro was successfully created." }
        format.json { render :show, status: :created, location: @membro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @membro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membros/1 or /membros/1.json
  def update
    respond_to do |format|
      if @membro.update(membro_params)
        format.html { redirect_to membro_url(@membro), notice: "Membro was successfully updated." }
        format.json { render :show, status: :ok, location: @membro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @membro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membros/1 or /membros/1.json
  def destroy
    @membro.destroy!

    respond_to do |format|
      format.html { redirect_to membros_url, notice: "Membro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membro
      @membro = Membro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def membro_params
      params.require(:membro).permit(:nome, :etapa, :rosto, :rg, :celular, :anoDeInscricao, :localEcyd, :restricao)
    end
end
