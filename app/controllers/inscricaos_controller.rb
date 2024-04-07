class InscricaosController < ApplicationController
    def new
        @membro = Membro.find(params[:membro_id])
        @evento = Evento.find(params[:evento_id])
        @inscricao = Inscricao.new
    end
end
