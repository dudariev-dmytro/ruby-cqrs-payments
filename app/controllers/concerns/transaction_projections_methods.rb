module TransactionProjectionsMethods
  extend ActiveSupport::Concern

  included do
    before_action :set_transaction_projection, only: %i[ show edit update destroy ]
  end

   # GET /transaction_projections or /transaction_projections.json
   def index
    @transaction_projections = TransactionProjection.all
  end

  # GET /transaction_projections/1 or /transaction_projections/1.json
  def show
  end

  # GET /transaction_projections/new
  def new
    @transaction_projection = TransactionProjection.new
  end

  # GET /transaction_projections/1/edit
  def edit
  end

  # POST /transaction_projections or /transaction_projections.json
  def create
    @transaction_projection = TransactionProjection.new(transaction_projection_params)

    respond_to do |format|
      if @transaction_projection.save
        format.html { redirect_to transaction_projection_url(@transaction_projection), notice: "Transaction projection was successfully created." }
        format.json { render :show, status: :created, location: @transaction_projection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_projections/1 or /transaction_projections/1.json
  def update
    respond_to do |format|
      if @transaction_projection.update(transaction_projection_params)
        format.html { redirect_to transaction_projection_url(@transaction_projection), notice: "Transaction projection was successfully updated." }
        format.json { render :show, status: :ok, location: @transaction_projection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_projections/1 or /transaction_projections/1.json
  def destroy
    @transaction_projection.destroy!

    respond_to do |format|
      format.html { redirect_to transaction_projections_url, notice: "Transaction projection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_projection
      @transaction_projection = TransactionProjection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_projection_params
      params.require(:transaction_projection).permit(:transaction_id, :action, :status, :amount, :customer_id, :customer_external_id, :merchant_id, :merchant_external_id, :provider, :client_payment_method, :provider_setting, :client_id, :event_type, :event_data)
    end
end