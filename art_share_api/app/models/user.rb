# == Schema Information
#
# Table name: users
#
#  id       :bigint(8)        not null, primary key
#  username :string           not null
#

class User < ApplicationRecord
  validates :username,presence:true, unique:true

  has_many :artworks,
  foreign_key: :artist_id,
  class_name: :Artwork

  has_many :artworks_shares,
  foreign_key: :viewer_id

end
