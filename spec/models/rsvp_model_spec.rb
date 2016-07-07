require 'rails_helper'

RSpec.describe Rsvp, type: :model do
  before(:each) do
    FactoryGirl.create(:rsvp, :rsvp_yes, :has_dietary_reqs)
  end

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:rsvp) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to validate_uniqueness_of(:first_name).scoped_to(:last_name) }
  it { is_expected.to validate_inclusion_of(:rsvp).in_array(%w{yes no}) }
end
