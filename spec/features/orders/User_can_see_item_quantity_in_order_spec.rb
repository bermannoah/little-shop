require "rails_helper"

RSpec.feature "users sees item quantities" do
  it "shows item quantity" do
    item_1 = create(:item_with_category)
    category = item_1.category

    visit menu_path

    click_on category.name
    click_on "Add to Order"

    page.find("#ORDER").click

    expect(page).to have_content("Quantity")
    expect(page).to have_content("1")
  end

  it "increases quantity count as you add items" do
    item_1 = create(:item_with_category)
    category = item_1.category

    visit menu_path

    click_on category.name
    click_on "Add to Order"

    page.find("#ORDER").click

    expect(page).to have_content("Quantity")
    expect(page).to have_content("1")

    click_on category.name
    click_on "Add to Order"

    page.find("#ORDER").click
    expect(page).to have_content("2")

  end
end