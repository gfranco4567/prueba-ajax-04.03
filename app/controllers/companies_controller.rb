class CompaniesController < ApplicationController
before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @company = Company.new
    @companies = Company.all.order(:id)
  end

  def show
    respond_to :js
  end

  def create
    @company = Company.new(
      name: params([:company][:name])
    )
    @company.save
    respond_to :js
  end

  def edit
    respond_to :js
  end

  def update
    @company.name = params([:company][:name])
    @company.save
    respond_to :js
  end


private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name)
  end

end
