class LightSerializer < ActiveModel::Serializer
  attributes :id, :type, :power, :pole, :latitude, :longitude
end
