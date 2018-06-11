# == Schema Information
#
# Table name: artworks_shares
#
#  id         :bigint(8)        not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#

class ArtworksShare < ApplicationRecord
  validates :artwork_id, presence:true
  validates :viewer_id, presence:true

  belongs_to :artwork

  belongs_to :viewer,
  class_name: :User
end
