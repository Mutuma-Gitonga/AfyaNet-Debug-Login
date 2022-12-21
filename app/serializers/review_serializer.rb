class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :doctor_id, :patient_id
end
