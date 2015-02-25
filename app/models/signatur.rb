class Signatur < ActiveRecord::Base
  belongs_to :user
  HEIGHT = 160
  WIDTH = 480
   
    #before_save :addSignature
    has_attached_file :image 
      do_not_validate_attachment_file_type :image
    
          private

  def signatur_present
    if signatur.size <= 2
      errors.add(:signatur, :blank)
    end
  end





end
