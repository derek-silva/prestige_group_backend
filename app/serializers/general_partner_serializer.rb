
class GeneralPartnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :aum, :alma_mater, :net_worth, :background, :picture_url
  has_many :holdings
end
