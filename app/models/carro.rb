class Carro < ApplicationRecord
  validates :marca, presence: true
  validates :modelo, presence: true
  validates :ano, presence: true
  validates :descricao, presence: true
  validates :valor, presence: true
end
