require File.expand_path '../spec_helper', __FILE__

RSpec.describe Dict do
    it "should find 'hello world'" do
        get '/'
        expect(last_response.body).to include("Say: Hello World")
    end
    it "should throw an error" do
        get '/'
        expect(last_response.body).to include("Ist nicht drin.")
    end
end

