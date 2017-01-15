class XpensesController < ApplicationController
  before_action :set_xpense, only: [:show, :edit, :update, :destroy]

  # GET /xpenses
  # GET /xpenses.json
  def index
    @xpenses = Xpense.all
  end

  # GET /xpenses/1
  # GET /xpenses/1.json
  def show
  end

  # GET /xpenses/new
  def new
    @xpense = Xpense.new
  end

  # GET /xpenses/1/edit
  def edit
  end

  # POST /xpenses
  # POST /xpenses.json
  def create
    @xpense = Xpense.new(xpense_params)

    respond_to do |format|
      if @xpense.save
        format.html { redirect_to @xpense, notice: 'Xpense was successfully created.' }
        format.json { render :show, status: :created, location: @xpense }
      else
        format.html { render :new }
        format.json { render json: @xpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xpenses/1
  # PATCH/PUT /xpenses/1.json
  def update
    respond_to do |format|
      if @xpense.update(xpense_params)
        format.html { redirect_to @xpense, notice: 'Xpense was successfully updated.' }
        format.json { render :show, status: :ok, location: @xpense }
      else
        format.html { render :edit }
        format.json { render json: @xpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xpenses/1
  # DELETE /xpenses/1.json
  def destroy
    @xpense.destroy
    respond_to do |format|
      format.html { redirect_to xpenses_url, notice: 'Xpense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xpense
      @xpense = Xpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xpense_params
      params.require(:xpense).permit(:name, :amount)
    end
end
