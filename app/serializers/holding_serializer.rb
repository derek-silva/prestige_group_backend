
class HoldingSerializer < ActiveModel::Serializer
  attributes :id, :holding_name, :sector, :controlling_interests, :total_holding_assets
  has_many :stocks
end