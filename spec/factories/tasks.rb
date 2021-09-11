FactoryBot.define do
  factory :task do
    title { 'test_title' }
    contents { 'test_content' }
  end
  factory :second_task, class: Task do
    title {'test2_title'}
    content {'test2_content'}
  end
end
