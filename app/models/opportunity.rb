class Opportunity < ApplicationRecord
    extend Enumerable
    enum_for :property_type, in: { Apartment: 1, Villa: 2, Townhouse: 3, Twinhouse: 4 }
    validates :name, presence: true, allow_blank: false
    validates :phone, presence: true, allow_blank: false

    has_attached_file :image
    validates_attachment_content_type :image, content_type: [/\Aimage\/.*\Z/]
    validates_with AttachmentPresenceValidator, attributes: :image
    validates_with AttachmentSizeValidator, attributes: :image, less_than: 2.megabytes
end
