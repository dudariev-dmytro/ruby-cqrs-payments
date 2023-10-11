class TransactionAggregatesController < ApplicationController
  before_action :set_transaction_aggregate, only: %i[ show edit update destroy ]

  # GET /transaction_aggregates or /transaction_aggregates.json
  def index
    @transaction_aggregates = TransactionAggregate.all
  end

  # GET /transaction_aggregates/1 or /transaction_aggregates/1.json
  def show
  end

  # GET /transaction_aggregates/new
  def new
    @transaction_aggregate = TransactionAggregate.new
  end

  # GET /transaction_aggregates/1/edit
  def edit
  end

  # POST /transaction_aggregates or /transaction_aggregates.json
  def create
    @transaction_aggregate = TransactionAggregate.new(transaction_aggregate_params)

    respond_to do |format|
      if @transaction_aggregate.save
        format.html { redirect_to transaction_aggregate_url(@transaction_aggregate), notice: "Transaction aggregate was successfully created." }
        format.json { render :show, status: :created, location: @transaction_aggregate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction_aggregate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_aggregates/1 or /transaction_aggregates/1.json
  def update
    respond_to do |format|
      if @transaction_aggregate.update(transaction_aggregate_params)
        format.html { redirect_to transaction_aggregate_url(@transaction_aggregate), notice: "Transaction aggregate was successfully updated." }
        format.json { render :show, status: :ok, location: @transaction_aggregate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction_aggregate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_aggregates/1 or /transaction_aggregates/1.json
  def destroy
    @transaction_aggregate.destroy!

    respond_to do |format|
      format.html { redirect_to transaction_aggregates_url, notice: "Transaction aggregate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_aggregate
      @transaction_aggregate = TransactionAggregate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_aggregate_params
      params.require(:transaction_aggregate).permit(:aggregate_id, :action, :status, :amount, :customer_id, :customer_external_id, :merchant_id, :merchant_external_id, :provider, :client_payment_method, :provider_setting, :client_id, :event_type, :event_data, :transaction_id)
    end
end
