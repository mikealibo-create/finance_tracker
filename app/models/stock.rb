class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex[:tpk],
            secret_token: Rails.application.credentials.iex[:tsk],
            endpoint: Rails.application.credentials.iex[:ep]
        )

        client.price(ticker_symbol)
    end
end
