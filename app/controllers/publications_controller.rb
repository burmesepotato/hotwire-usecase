class PublicationsController < ApplicationController
  before_action :set_applicant, only: %i[ new create ]

  def new
    @publication = @applicant.publications.new
  end

  def create
    @publication = @applicant.publications.new(publication_params)

    respond_to do |format|
      format.html { redirect_to @applicant }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant
      @applicant = Applicant.find(params[:applicant_id])
    end

    # Only allow a list of trusted parameters through.
    def publication_params
      params.require(:publication).permit(:title, :content)
    end
end
  