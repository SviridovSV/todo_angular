FactoryBot.define do
  factory :comment do
    title FFaker::Book.title
    task nil
  end
end
