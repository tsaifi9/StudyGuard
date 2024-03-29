class DocumentsController < ApplicationController
  def show
    @group = Group.find params[:group_id]
    @document = Document.find params[:id]

    @pipeline = HTML::Pipeline.new [HTML::Pipeline::MarkdownFilter]
  end

  def create
    @group = Group.find params[:group_id]
    @group.documents.create document_params

    redirect_to @group
  end

  private
  def document_params
    params.require(:document).permit(:name)
  end
end
