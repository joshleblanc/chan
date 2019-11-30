require 'byebug'
module Chan
    class Board < Wrapper   
        def name
            board
        end

        def catalog
            @catalog ||= Api::catalog(name)
        end

        def pages
            catalog.length
        end

        def random_page
            page(rand(pages))
        end

        def sample
            random_page.sample
        end

        def page(page_num)
            catalog[page_num]["threads"].map { |json| Thread.new(name, json) }
        end

        class << self
            def [](name)
                boards[name]
            end

            def boards
                if @boards
                    @boards
                else
                    @boards = {}
                    json = Api.boards
                    json.each do |board_json|
                        board = Board.new(board_json)
                        @boards[board.name] = board
                    end
                    @boards
                end
            end
        end
    end
end