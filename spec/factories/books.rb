FactoryBot.define do
  factory :book do
    title                 {"abe"}
    record_date           {"2020/10/01"}
    reading_situation_id  {2}
    author                {"abe"}
    genre                 {"ビジネス"}
    publishing            {"a社"}
    memo                  {"aaa"}
    impression            {"aaa"}
    evaluation_id         {2}
    association :user
  end
end
