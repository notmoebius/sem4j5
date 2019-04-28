class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  # à gérer les 
  belongs_to :guest, class_name: "User"
  belongs_to :admin, class_name: "Listing"


  def start_must_be_before_end_time
    errors.add(:start_date, "must be before end time") unless
      start_date < end_date
  end 

  def overlaping_reservation?(datetime)
    # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
  end
end
