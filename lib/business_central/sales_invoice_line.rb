##
# Provides access to the /salesInvoices/{Id}/salesInvoiceLines API
#

module BusinessCentral
  class SalesInvoiceLine < BusinessCentral::Base
    API_OBJECT_PARENT = "salesInvoices"
    API_OBJECT = "salesInvoiceLines"

    def get(sales_invoice_id, sales_invoice_line_id = nil, sequence = nil)
      url = build_url(sales_invoice_id,
                      build_options(sales_invoice_line_id, sequence))


      response = @client.get(url)
      handle_error(response)
      results = process(results)

      if results.is_a?(Array)
        return results.first if results.length == 1
        return results
      end
    end
  end
end