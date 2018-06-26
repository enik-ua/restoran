class OrderContentsController < ApplicationController
  before_action :set_order_content, only: [:show, :edit, :update, :destroy]

  # GET /order_contents
  # GET /order_contents.json
  def index
    @order_contents = OrderContent.all
  end

  # GET /order_contents/1
  # GET /order_contents/1.json
  def show
  end

  # GET /order_contents/new
  def new
    @order_content = OrderContent.new
  end

  # GET /order_contents/1/edit
  def edit
  end

  # POST /order_contents
  # POST /order_contents.json
  def create
    @order   = Order.find(params[:order_id])
    @menu    = Menu.find_by(name: params[:order_content][:menu])
    @order_content = OrderContent.new(order: @order, menu: @menu, count: params[:order_content][:count])
    @order_content.save

    #render plain: params
    #@order   = Order.find(params[:order_id])
    #render plain: @order.self
    #@order_content = @order.order_contents.create(params.require(:order_content).permit(:number))
    #@order_content[:menu] = Menu.find_by(name: params[:order_content][:menu])
    #render plain: Menu.find_by(name: params[:order_content][:menu])
    #render plain: @order_content[:menu]
    #redirect_to article_path(@order)

    #@order_content = OrderContent.new(order_content_params)

    #respond_to do |format|
    #  if @order_content.save
    #    format.html { redirect_to @order_content, notice: 'Order content was successfully created.' }
    #    format.json { render :show, status: :created, location: @order_content }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @order_content.errors, status: :unprocessable_entity }
    #  end
    #end

    if @order_content.errors.any?
      render plain:@order_content.errors.full_messages.first
    end
    redirect_to @order
  end

  # PATCH/PUT /order_contents/1
  # PATCH/PUT /order_contents/1.json
  def update
    respond_to do |format|
      if @order_content.update(order_content_params)
        format.html { redirect_to @order_content, notice: 'Order content was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_content }
      else
        format.html { render :edit }
        format.json { render json: @order_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_contents/1
  # DELETE /order_contents/1.json
  def destroy
    @order_content.destroy
    respond_to do |format|
      format.html { redirect_to @order_content.order, notice: 'Order content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_content
      @order_content = OrderContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_content_params
      params.require(:order_content).permit(:count, :order_id, :menu_id)
    end
end
