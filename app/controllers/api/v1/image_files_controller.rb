class Api::V1::ImageFilesController < ApplicationController

  def get_images
    image_files = ImageFile.all
    render json: image_files, each_serializer: ImageFileSerializer, meta: { total_count: image_files.count}
  end

  def upload
    image_file = ImageFile.new(file_name: params[:file_name], image: params[:image])
    if image_file.save
      render json: image_file, serializer: ImageFileSerializer
    else
      errors = image_file.errors.full_messages.join(", ")
      render json: { sucess: false, message: errors }, status: :unprocessable_entity
    end
  end

  def destroy
    image_file = ImageFile.find_by(id: params[:id])
    image_file.destroy!
  end
end
