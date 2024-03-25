class Inscricao < ApplicationRecord
  belongs_to :membro
  belongs_to :evento
end
