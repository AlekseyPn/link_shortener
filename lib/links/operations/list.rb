module Links
  module Operations
    class List
      attr_reader :repo
      def initialize(repo: LinkRepository.new)
        @repo = repo
      end

      def call(_payload = {})
        repo.all
      end
    end
  end
end
