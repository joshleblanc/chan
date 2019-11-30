module Chan
    class Wrapper
        def initialize(json)
            @json = json
        end

        def method_missing(m, *args, &block)
            @json[m.to_s]
        end
    end
end