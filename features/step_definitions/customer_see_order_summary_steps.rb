Given("the following order items exist in the order:") do |table|
  @order = Order.create
  table.hashes.each do | product |
    steps %Q{
      And "#{product[:name]}" is already in my order
    }
  end
end

Then("I should see {string} with a price of {string}") do |product_name, product_price|
  expect(page).to_have product_name
end

Then("I should be redirected to {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

def page_path_from(page_name)
  case page_name.downcase
  when 'Oliver\'s Burger'
      restaurant_path(Restaurant.find_by(name: page_name))
    when 'order'
      orders_path(Order.last)
    else
      root_path
  end
end
