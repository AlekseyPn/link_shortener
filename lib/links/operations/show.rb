module Links
  module Operations
    class Show
      attr_reader :repo

      def initialize(repo: LinkRepository.new)
        @repo = repo
      end

      def call(key:)
        if link = repo.find_by_key(key)
          repo.transaction do
            repo.update(link.id, click_count: link.click_count + 1)
          end
        end
        link
      end
    end
  end
end
