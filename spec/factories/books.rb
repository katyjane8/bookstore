FactoryBot.define do
  factory :book do
    title {"Land Before Time"}
    author {"Cool Author"}
    avg_rating {"4.3"}
    isbn {1234}
    image {"image.jpeg"}
  end
end