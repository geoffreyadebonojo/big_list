require 'rails_helper'

RSpec.describe "Item#show" do
  it "shows one item" do
    title_1 = "Star Wars"
    item = Item.create(category: "film", name: title_1)
    Item.create(category: "film", name: "Empire Strikes Back")
    Item.create(category: "film", name: "Return of the Jedi")
    visit '/items'

    click_link(title_1)

    expect(current_path).to eq(item_path(item))

  end
end
