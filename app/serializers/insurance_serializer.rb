class InsuranceSerializer < ActiveModel::Serializer
  attributes :id, :company
  belongs_to :doctor


end
