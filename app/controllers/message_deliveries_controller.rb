class MessageDeliveriesController < ApplicationController
  # GET /message_deliveries
  # GET /message_deliveries.json
  def index
    @message_deliveries = MessageDelivery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @message_deliveries }
    end
  end

  # GET /message_deliveries/1
  # GET /message_deliveries/1.json
  def show
    @message_delivery = MessageDelivery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message_delivery }
    end
  end

  # GET /message_deliveries/new
  # GET /message_deliveries/new.json
  def new
    @message_delivery = MessageDelivery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message_delivery }
    end
  end

  # GET /message_deliveries/1/edit
  def edit
    @message_delivery = MessageDelivery.find(params[:id])
  end

  # POST /message_deliveries
  # POST /message_deliveries.json
  def create
    @message_delivery = MessageDelivery.new(params[:message_delivery])

    respond_to do |format|
      if @message_delivery.save
        format.html { redirect_to @message_delivery, notice: 'Message delivery was successfully created.' }
        format.json { render json: @message_delivery, status: :created, location: @message_delivery }
      else
        format.html { render action: "new" }
        format.json { render json: @message_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /message_deliveries/1
  # PUT /message_deliveries/1.json
  def update
    @message_delivery = MessageDelivery.find(params[:id])

    respond_to do |format|
      if @message_delivery.update_attributes(params[:message_delivery])
        format.html { redirect_to @message_delivery, notice: 'Message delivery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_deliveries/1
  # DELETE /message_deliveries/1.json
  def destroy
    @message_delivery = MessageDelivery.find(params[:id])
    @message_delivery.destroy

    respond_to do |format|
      format.html { redirect_to message_deliveries_url }
      format.json { head :no_content }
    end
  end
end
