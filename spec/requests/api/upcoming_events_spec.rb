RSpec.describe "GET /api/upcoming_events" do
  it "returns the next upcoming event" do
    get "api/upcoming_events"

    expect(response).to be_successful
  end
end
