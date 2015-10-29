class Company1sController < ApplicationController
  before_action :set_company1, only: [:show, :edit, :update, :destroy]

  # GET /company1s
  # GET /company1s.json
  def index
    @company1s = Company1.all
  end

  # GET /company1s/1
  # GET /company1s/1.json
  def show
  end

  # GET /company1s/new
  def new
    @company1 = Company1.new
  end

  # GET /company1s/1/edit
  def edit
  end

  # POST /company1s
  # POST /company1s.json
  def create
    @company1 = Company1.new(company1_params)

    respond_to do |format|
      if @company1.save
        format.html { redirect_to @company1, notice: 'Company1 was successfully created.' }
        format.json { render :show, status: :created, location: @company1 }
      else
        format.html { render :new }
        format.json { render json: @company1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company1s/1
  # PATCH/PUT /company1s/1.json
  def update
    respond_to do |format|
      if @company1.update(company1_params)
        format.html { redirect_to @company1, notice: 'Company1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @company1 }
      else
        format.html { render :edit }
        format.json { render json: @company1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company1s/1
  # DELETE /company1s/1.json
  def destroy
    @company1.destroy
    respond_to do |format|
      format.html { redirect_to company1s_url, notice: 'Company1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def import
    Company1.import(params[:file])
    redirect_to company1s_path, notice "company was added successfully"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company1
      @company1 = Company1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company1_params
      params.require(:company1).permit(:name, :manager, :status, :terms)
    end
end
