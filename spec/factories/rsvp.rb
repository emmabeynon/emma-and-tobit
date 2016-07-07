FactoryGirl.define do
  factory :rsvp do
    first_name "Tony"
    last_name "Soprano"
    email "tony@sopranos.com"

    trait :rsvp_yes do
      rsvp "yes"
    end

    trait :rsvp_no do
      rsvp "no"
    end

    trait :has_dietary_reqs do
      dietary_requirements "vegetarian"
    end

    trait :no_dietary_reqs do
      dietary_requirements nil
    end

    trait :wrote_in_anything_else do
      anything_else "Sorry I can't make it"
    end
  end
end
