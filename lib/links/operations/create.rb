module Links
  module Operations
    class Create
      attr_reader :repo, :key_generator
      # rubocop:disable Metrics/LineLength
      def initialize(repo: LinkRepository.new, key_generator: Libs::KeyGenerator.new)
        # rubocop:enable Metrics/LineLength
        @repo = repo
        @key_generator = key_generator
      end

      def call(payload)
        payload[:key] = key_generator.call
        repo.create(payload)
      end
    end
  end
end

