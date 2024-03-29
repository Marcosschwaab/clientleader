class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]
  before_action :set_accessories, :set_equipaments, :set_marks, :set_progres, :set_sectors, :set_stats, only: %i[ new create edit update ]

  # GET /orders or /orders.json
  def index
    @q = Order.ransack(params[:q])
    @pagy, @orders = pagy(@q.result(distinct: true))
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.client = Client.find(params[:id])
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:client_id, :date, :mark_id, :model, :serial_number, :accessory_id, :bug, :solution, :stat_id, :observation, :price, :equipament_id, :progre_id, :control_internal, :sector_id, accessory_ids:[])
    end
    
    def set_accessories
      @accessories = Accessory.all
    end

    def set_equipaments
      @equipaments = Equipament.all
    end
    

    def set_marks
      @marks = Mark.all
    end
    
    def set_stats
      @stas = Stat.all
    end 
    
    def set_progres
    @Progres = Progre.all
    end

    def set_sectors
      @sectors = Sector.all
    end
end