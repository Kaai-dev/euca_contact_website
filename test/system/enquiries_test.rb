require "application_system_test_case"

class EnquiriesTest < ApplicationSystemTestCase
  setup do
    @enquiry = enquiries(:one)
  end

  test "visiting the index" do
    visit enquiries_url
    assert_selector "h1", text: "Enquiries"
  end

  test "should create enquiry" do
    visit enquiries_url
    click_on "New enquiry"

    fill_in "Company", with: @enquiry.company
    fill_in "Contact number", with: @enquiry.contact_number
    fill_in "Department", with: @enquiry.department
    fill_in "Email", with: @enquiry.email
    check "Euca iot" if @enquiry.euca_iot
    fill_in "First name", with: @enquiry.first_name
    fill_in "Message", with: @enquiry.message
    fill_in "Show", with: @enquiry.show
    fill_in "Surname", with: @enquiry.surname
    click_on "Create Enquiry"

    assert_text "Enquiry was successfully created"
    click_on "Back"
  end

  test "should update Enquiry" do
    visit enquiry_url(@enquiry)
    click_on "Edit this enquiry", match: :first

    fill_in "Company", with: @enquiry.company
    fill_in "Contact number", with: @enquiry.contact_number
    fill_in "Department", with: @enquiry.department
    fill_in "Email", with: @enquiry.email
    check "Euca iot" if @enquiry.euca_iot
    fill_in "First name", with: @enquiry.first_name
    fill_in "Message", with: @enquiry.message
    fill_in "Show", with: @enquiry.show
    fill_in "Surname", with: @enquiry.surname
    click_on "Update Enquiry"

    assert_text "Enquiry was successfully updated"
    click_on "Back"
  end

  test "should destroy Enquiry" do
    visit enquiry_url(@enquiry)
    click_on "Destroy this enquiry", match: :first

    assert_text "Enquiry was successfully destroyed"
  end
end
