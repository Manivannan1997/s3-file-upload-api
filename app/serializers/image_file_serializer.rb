class ImageFileSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :file_name, :image_url

  def image_url
    rails_blob_path(object.image, disposition: :attachment, only_path: true) if object.image.attachment.present?
  end
end
