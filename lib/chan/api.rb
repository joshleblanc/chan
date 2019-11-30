require 'open-uri'
require 'json'

module Chan
    module Api
        BASE_URL = 'https://a.4cdn.org'

        def self.boards
            get("boards.json")['boards']
        end

        def self.catalog(board)
            get("#{board}/catalog.json")
        end

        def self.thread(board, thread)
            get("#{board}/thread/#{thread}.json")
        end

        private

        def self.get(url)
            response = open("#{BASE_URL}/#{url}").read
            JSON.parse(response)
        end
    end
end