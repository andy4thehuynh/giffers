class Gif < ApplicationRecord
  has_one_attached :file

  validate :acceptable_type

  private

  def acceptable_type
    return unless file.attached?
    acceptable_types = ["image/gif"]

    unless acceptable_types.include?(file.content_type)
      errors.add(:file, "must be a gif")
    end
  end
end
