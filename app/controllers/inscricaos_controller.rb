class InscricaosController < ApplicationController
    def new
        @membro = Membro.find(params[:membro_id])
        @evento = Evento.find(params[:evento_id])
        @inscricao = Inscricao.new
    end

    def create
        @inscricao = Inscricao.new(inscricao_params)
        @evento = Evento.find(inscricao_params[:evento_id])
        @membro = Membro.find(inscricao_params[:membro_id])

        if @inscricao.save
            redirect_to @evento, notice: 'Inscrição foi feita com sucesso.'
        else
            render :new
        end
    end

    private 
    def inscricao_params
        params.require(:inscricao).permit(:membro_id, :evento_id)
    end
end
