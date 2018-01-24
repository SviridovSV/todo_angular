FactoryBot.define do
  factory :project do
    title FFaker::Book.title
    user nil
  end
end