class InvestorSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :avatar, :bio, :investmentamount
end
