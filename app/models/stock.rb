class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: 'Tpk_03468247c8e044e29207ac6460766ccb',
            secret_token: 'Tsk_86eb8e5d490a42ae84c6ab2563c899cc',
            endpoint: 'https://sandbox.iexapis.com/v1'
        )

        client.price(ticker_symbol)
    end
end
