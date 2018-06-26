require "application_system_test_case"

class OrderContentsTest < ApplicationSystemTestCase
  setup do
    @order_content = order_contents(:one)
  end

  test "visiting the index" do
    visit order_contents_url
    assert_selector "h1", text: "Order Contents"
  end

  test "creating a Order content" do
    visit order_contents_url
    click_on "New Order Content"

    fill_in "Count", with: @order_content.count
    fill_in "Menu", with: @order_content.menu_id
    fill_in "Order", with: @order_content.order_id
    click_on "Create Order content"

    assert_text "Order content was successfully created"
    click_on "Back"
  end

  test "updating a Order content" do
    visit order_contents_url
    click_on "Edit", match: :first

    fill_in "Count", with: @order_content.count
    fill_in "Menu", with: @order_content.menu_id
    fill_in "Order", with: @order_content.order_id
    click_on "Update Order content"

    assert_text "Order content was successfully updated"
    click_on "Back"
  end

  test "destroying a Order content" do
    visit order_contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order content was successfully destroyed"
  end
end
