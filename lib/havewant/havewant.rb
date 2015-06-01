module HaveWant

  class HaveWant

    attr_reader :answers

    def initialize(*have, want)
      @have = have[0]
      @args = have[1..-1]
      @want = want

      find_matches
    end

    private

    def find_matches
      @answers = @have.methods.map do |method|
        @have.dup.method(method)
      end.select do |method|
        begin
          method.call(*@args).eql? @want
        rescue
          false
        end
      end.map(&:name)
    end

  end

end