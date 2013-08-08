module Spreedly

  module Urls

    def base_url
      "https://core.spreedly.com"
    end

    def find_payment_method_url(token)
      "#{base_url}/v1/payment_methods/#{token}.xml"
    end

    def find_transaction_url(token)
      "#{base_url}/v1/transactions/#{token}.xml"
    end

    def find_gateway_url(token)
      "#{base_url}/v1/gateways/#{token}.xml"
    end

    def purchase_url(gateway_token)
      "#{base_url}/v1/gateways/#{gateway_token}/purchase.xml"
    end

    def authorize_url(gateway_token)
      "#{base_url}/v1/gateways/#{gateway_token}/authorize.xml"
    end

    def capture_url(authorization_token)
      "#{base_url}/v1/transactions/#{authorization_token}/capture.xml"
    end

    def void_transaction_url(token)
      "#{base_url}/v1/transactions/#{token}/void.xml"
    end

    def refund_transaction_url(token)
      "#{base_url}/v1/transactions/#{token}/credit.xml"
    end

    def retain_payment_method_url(payment_method_token)
      "#{base_url}/v1/payment_methods/#{payment_method_token}/retain.xml"
    end

    def redact_payment_method_url(payment_method_token)
      "#{base_url}/v1/payment_methods/#{payment_method_token}/redact.xml"
    end

    def list_transactions_url(since_token, payment_method_token)
      since_param = "?since_token=#{since_token}" if since_token
      return "#{base_url}/v1/transactions.xml#{since_param}" unless payment_method_token

      "#{base_url}/v1/payment_methods/#{payment_method_token}/transactions.xml#{since_param}"
    end

    def add_gateway_url
      "#{base_url}/v1/gateways.xml"
    end

    def add_payment_method_url
      "#{base_url}/v1/payment_methods.xml"
    end

  end

end
