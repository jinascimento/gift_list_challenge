ActiveRecord::Base.transaction do
  Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
    load seed
  end
end
