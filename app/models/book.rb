class Book < ActiveRecord::Base
  validates :title, presence: true

  after_create :set_book_reference_id

  def set_book_reference_id
    book_ref_id = ''
    if self.id <= 9
      book_ref_id = "#000#{self.id}"
    elsif self.id <= 99
      book_ref_id = "#00#{self.id}"
    elsif self.id <= 999
      book_ref_id = "#0#{self.id}"
    else
      book_ref_id = "##{self.id}"
    end
    book_ref_id = book_ref_id + "#{self.title.present? ? self.title.chars.first : ''}" + "#{self.author.present? ? self.author.chars.first : ''}" + "#{self.published_by.present? ? self.published_by.chars.first : ''}"
    self.update_attributes(book_referece_id: book_ref_id)
  end
end
