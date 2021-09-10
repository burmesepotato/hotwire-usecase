class Publication < ApplicationRecord
  belongs_to :applicant
  validates :title, :content, presence: true

  after_create_commit { broadcast_append_to "publications" }
  after_update_commit { broadcast_replace_to "publications" }
  after_destroy_commit { broadcast_remove_to "publications" }
end
