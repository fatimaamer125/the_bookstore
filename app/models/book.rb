class Book < ActiveRecord::Base
    belongs_to :user 
    belongs_to :category
    has_many :review
    
    has_attached_file :book_im, :styles => { :book_index => "250x350>", :book_show => "325x475>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :book_im, :content_type => /\Aimage\/.*\Z/
end
 