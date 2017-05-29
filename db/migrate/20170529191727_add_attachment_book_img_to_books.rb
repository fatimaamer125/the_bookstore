class AddAttachmentBookImgToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :book_im
    end
  end

  def self.down
    remove_attachment :books, :book_im
  end
end
