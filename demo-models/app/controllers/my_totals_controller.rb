class MyTotalsController < ApplicationController
  before_action :set_my_total, only: %i[ show edit update destroy ]

  # GET /my_totals or /my_totals.json
  def index
    @my_totals = MyTotal.all
  end

  # GET /my_totals/1 or /my_totals/1.json
  def show
  end

  # GET /my_totals/new
  def new
    @my_total = MyTotal.new
  end

  # GET /my_totals/1/edit
  def edit
  end

  # POST /my_totals or /my_totals.json
  def create
    @my_total = MyTotal.new(my_total_params)

    respond_to do |format|
      if @my_total.save
        format.html { redirect_to @my_total, notice: "My total was successfully created." }
        format.json { render :show, status: :created, location: @my_total }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_totals/1 or /my_totals/1.json
  def update
    respond_to do |format|
      if @my_total.update(my_total_params)
        format.html { redirect_to @my_total, notice: "My total was successfully updated." }
        format.json { render :show, status: :ok, location: @my_total }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_totals/1 or /my_totals/1.json
  def destroy
    @my_total.destroy
    respond_to do |format|
      format.html { redirect_to my_totals_url, notice: "My total was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_total
      @my_total = MyTotal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_total_params
      params.require(:my_total).permit(:first_operator, :second_operator, :total)
    end
end
