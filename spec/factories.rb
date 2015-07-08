FactoryGirl.define do
  factory(:listing) do
    name('big lawn')
    location('portland')
  end

  factory(:user) do
    email 'text@example.com'
    password 12345678
  end
end
