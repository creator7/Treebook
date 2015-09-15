class Status < ActiveRecord::Base
  extend FriendlyId
  friendly_id :contentpart, use: :slugged
  validates :content, presence: true, length: { minimum: 5 }
  belongs_to :user
  has_many :comments

  def contentpart
    if(self.content.length > 50)
      return self.content[0..49]
    else
      return self.content
    end
  end

  def should_generate_new_friendly_id?
    self.slug = nil
    content_changed?
  end
end
