module ProjectsHelper

  def project_params
    params.require(:project).permit(:code, :name)
  end


end
