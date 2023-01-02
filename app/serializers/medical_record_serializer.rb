class MedicalRecordSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :blood_pressure, :temperature, :weight, :height, :allergies, :medications, :bmi
  belongs_to :patient

#calculate bmi from weight and height
    def bmi
        object.weight.to_f / (object.height.to_f * object.height.to_f)
    end
end
