require "test_helper"

class IncidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get incidents_url
    assert_response :success
  end

  test "should get new" do
    get new_incident_url
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post incidents_url, params: { incident: { call_time: @incident.call_time, closed_time: @incident.closed_time, incident_number: @incident.incident_number, incident_type: @incident.incident_type, neighbourhood: @incident.neighbourhood, unit: @incident.unit, vehicle: @incident.vehicle, ward: @incident.ward } }
    end

    assert_redirected_to incident_url(Incident.last)
  end

  test "should show incident" do
    get incident_url(@incident)
    assert_response :success
  end

  test "should get edit" do
    get edit_incident_url(@incident)
    assert_response :success
  end

  test "should update incident" do
    patch incident_url(@incident), params: { incident: { call_time: @incident.call_time, closed_time: @incident.closed_time, incident_number: @incident.incident_number, incident_type: @incident.incident_type, neighbourhood: @incident.neighbourhood, unit: @incident.unit, vehicle: @incident.vehicle, ward: @incident.ward } }
    assert_redirected_to incident_url(@incident)
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete incident_url(@incident)
    end

    assert_redirected_to incidents_url
  end
end
