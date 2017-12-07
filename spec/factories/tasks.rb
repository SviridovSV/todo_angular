FactoryBot.define do
  factory :task do
    project nil
    done false
    deadline FFaker::Time.date
    title FFaker::Book.title
    position 1
  end
end
