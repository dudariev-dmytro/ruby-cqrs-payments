module Api
  module V1
    module Payment
      class PaymentController < ApplicationController
        include TransactionAggregatesMethods
        include TransactionEventsMethods
        include TransactionProjectionsMethods
        def create
          # login here
          # send action to kafka
          # create event
          event_result = TransactionEventsMethods.instance_method(:index).bind(self).call
          # create aggregator
          aggregator_result = TransactionAggregatesMethods.instance_method(:index).bind(self).call
          # create projection
          projection_result = TransactionProjectionsMethods.instance_method(:index).bind(self).call
          response_data = [
            {
              event_result: event_result
            },
            {
              aggregator_result: aggregator_result
            },
            {
              projection_result: projection_result
            },
          ]
          render json: response_data
        end
      end
    end
  end
end