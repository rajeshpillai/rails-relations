class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user 
  has_many :taggings
  has_many :tags, through: :taggings 
  has_one_attached :featured_image 

  # for friendly ID
  extend FriendlyId 
  friendly_id :title, use: :slugged

  def all_tags=(tags)
    if tags.blank?
      return
    end
    self.tags = tags.split(",").map do |name|
      unless name.blank?
        Tag.where(name: name.strip).first_or_create!
      end
    end

  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def post_body
    self.body.body
  end

end
