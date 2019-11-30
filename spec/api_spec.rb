RSpec.describe Chan::Api do
    it "gets boards" do
        boards = Chan::Api.boards
        expect(boards.length).to eq(72)
    end
  end
  