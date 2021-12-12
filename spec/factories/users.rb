FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    first_name            { '太郎' }
    last_name             { '桃' }
    first_name_kana       { 'タロウ' }
    last_name_kana        { 'タオ' }
    birthday              { '1983-03-30' }
  end
end
