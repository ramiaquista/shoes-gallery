class ShoesController < ApplicationController
  before_action :set_shoe, only: %i[ show edit update destroy ]

  # GET /shoes or /shoes.json
  def index
    @shoes = Shoe.all
  end

  # GET /shoes/1 or /shoes/1.json
  def show
  end

  # GET /shoes/new
  def new
    @shoe = Shoe.new
  end

  # GET /shoes/1/edit
  def edit
  end

  # POST /shoes or /shoes.json
  def create
    @shoe = Shoe.new(shoe_params)

    respond_to do |format|
      if @shoe.save
        format.html { redirect_to shoe_url(@shoe), notice: "Shoe was successfully created." }
        format.json { render :show, status: :created, location: @shoe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoes/1 or /shoes/1.json
  def update
    respond_to do |format|
      if @shoe.update(shoe_params)
        format.html { redirect_to shoe_url(@shoe), notice: "Shoe was successfully updated." }
        format.json { render :show, status: :ok, location: @shoe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoes/1 or /shoes/1.json
  def destroy
    @shoe.destroy

    respond_to do |format|
      format.html { redirect_to shoes_url, notice: "Shoe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shoe_params
      params.require(:shoe).permit(:name, :model, :edition, :year, :color, :image)
    end
end
