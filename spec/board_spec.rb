RSpec.describe Chan::Api do
    it "creates board cache" do
        boards = Chan::Board.boards
        expect(boards.length).to eq(72)
    end

    it "aliases name to board" do
        board = Chan::Board["3"]
        expect(board.name).to eq("3")
    end

    it "gets a page" do
        board = Chan::Board["3"]
        byebug
    end
  end
  