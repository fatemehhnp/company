json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :date, :salesperson, :company, :tax
  json.url invoice_url(invoice, format: :json)
end
