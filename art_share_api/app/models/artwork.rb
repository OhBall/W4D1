# == Schema Information
#
# Table name: artworks
#
#  id        :bigint(8)        not null, primary key
#  title     :string           not null
#  url       :string           not null
#  artist_id :integer          not null
#

class Artwork < ApplicationRecord
  validates :title, presence:true
  validates :url, presence:true
  validates :artist_id, presence:true

  belongs_to :artist,
  class_name: :User

  has_many :artworks_shares

end
