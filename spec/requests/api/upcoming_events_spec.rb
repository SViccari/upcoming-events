require "rails_helper"

RSpec.describe "GET /api/upcoming_events" do
  it "returns the next upcoming event" do
    get "/api/upcoming_events"

    expect(response).to be_successful

    events = JSON.parse(response.body)
    expect(events.first["name"]).to eq("'Roosevelt Island: A History of Health, Science, and Scandal' Webinar")

    allow(UpcomingEventsClass).to receive(:all).and_return([events])
  end
end
