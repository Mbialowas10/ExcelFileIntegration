require "application_system_test_case"

class IncidentsTest < ApplicationSystemTestCase
  setup do
    @incident = incidents(:one)
  end

  test "visiting the index" do
    visit incidents_url
    assert_selector "h1", text: "Incidents"
  end

  test "creating a Incident" do
    visit incidents_url
    click_on "New Incident"

    fill_in "Call time", with: @incident.call_time
    fill_in "Closed time", with: @incident.closed_time
    fill_in "Incident number", with: @incident.incident_number
    fill_in "Incident type", with: @incident.incident_type
    fill_in "Neighbourhood", with: @incident.neighbourhood
    fill_in "Unit", with: @incident.unit
    fill_in "Vehicle", with: @incident.vehicle
    fill_in "Ward", with: @incident.ward
    click_on "Create Incident"

    assert_text "Incident was successfully created"
    click_on "Back"
  end

  test "updating a Incident" do
    visit incidents_url
    click_on "Edit", match: :first

    fill_in "Call time", with: @incident.call_time
    fill_in "Closed time", with: @incident.closed_time
    fill_in "Incident number", with: @incident.incident_number
    fill_in "Incident type", with: @incident.incident_type
    fill_in "Neighbourhood", with: @incident.neighbourhood
    fill_in "Unit", with: @incident.unit
    fill_in "Vehicle", with: @incident.vehicle
    fill_in "Ward", with: @incident.ward
    click_on "Update Incident"

    assert_text "Incident was successfully updated"
    click_on "Back"
  end

  test "destroying a Incident" do
    visit incidents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incident was successfully destroyed"
  end
end
