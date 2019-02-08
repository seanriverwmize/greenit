class Link < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  acts_as_votable
  def self.search(term)
    if term
      where('title LIKE ?', "#{term}").order('id DESC')
    else
      order('id DESC')
    end
  end
end
