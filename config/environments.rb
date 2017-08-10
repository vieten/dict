configure :production, :development do

    ActiveRecord::Base.establish_connection(
        :adapter => 'mysql2',
        :host => 'localhost',
        :username => 'root',
        :password => '',
        :database => 'dict'
    )
end
