require_relative '../lib/hello_world'

RSpec.describe '../lib/hello_world' do
  describe '#hello' do
    it "returns 'Hello, World!'" do
      expect(HelloWorld.hello).to eq 'Hello, World!'
    end
  end
end
