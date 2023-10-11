class TransactionEventsController < ApplicationController
  before_action :set_transaction_event, only: %i[ show edit update destroy ]

  # GET /transaction_events or /transaction_events.json
  def index
    @transaction_events = TransactionEvent.all
  end

  # GET /transaction_events/1 or /transaction_events/1.json
  def show
  end

  # GET /transaction_events/new
  def new
    @transaction_event = TransactionEvent.new
  end

  # GET /transaction_events/1/edit
  def edit
  end

  # POST /transaction_events or /transaction_events.json
  def create
    @transaction_event = TransactionEvent.new(transaction_event_params)

    respond_to do |format|
      if @transaction_event.save
        format.html { redirect_to transaction_event_url(@transaction_event), notice: "Transaction event was successfully created." }
        format.json { render :show, status: :created, location: @transaction_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_events/1 or /transaction_events/1.json
  def update
    respond_to do |format|
      if @transaction_event.update(transaction_event_params)
        format.html { redirect_to transaction_event_url(@transaction_event), notice: "Transaction event was successfully updated." }
        format.json { render :show, status: :ok, location: @transaction_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_events/1 or /transaction_events/1.json
  def destroy
    @transaction_event.destroy!

    respond_to do |format|
      format.html { redirect_to transaction_events_url, notice: "Transaction event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_event
      @transaction_event = TransactionEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_event_params
      params.require(:transaction_event).permit(:event_id, :aggregate_id, :action, :status, :amount, :customer_id, :customer_external_id, :merchant_id, :merchant_external_id, :provider, :client_payment_method, :provider_setting, :client_id, :event_type, :event_data, :event_timestamp, :transaction_id)
    end
end
