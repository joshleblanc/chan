module Chan
    class Thread < Wrapper
        def initialize(board, json)
            @board = board
            super(json)
        end

        def posts
            @posts ||= Api.thread(@board, no)
        end
    end
end