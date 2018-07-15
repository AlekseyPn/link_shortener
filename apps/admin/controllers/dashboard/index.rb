module Admin::Controllers::Dashboard
  class Index
    include Admin::Action
    attr_reader :operation

    expose :links

    def initialize(operation: Links::Operations::List.new)
      @operation = operation
    end

    def call(_params = {})
      @links = operation.call
    end
  end
end
