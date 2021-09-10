class Applicant < ApplicationRecord
    has_many :publications
    validates :name, :position, presence: true

    after_create_commit { broadcast_append_to "applicants" }
    after_update_commit { broadcast_replace_to "applicants" }
    after_destroy_commit { broadcast_remove_to "applicants" }
end
