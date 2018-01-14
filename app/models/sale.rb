class Sale < ApplicationRecord
  # Chiama la funzione generate_guid prima della crazione del Content
  before_create :generate_guid

  belongs_to :content

  private

    def generate_guid
      # Fuzione che genere un guid randomico sicuro (guid = una specie di ID(non Integer ma string)
      # per le transazioni piu sicuro)
        self.guid = SecureRandom.uuid()
    end

end
