module Admin::Controllers::Links
  class Create
    include Admin::Action
    
    params do
      required(:link).schema do
        required(:url).filled(:str?)
      end
    end
    attr_reader :operation

    def initialize(operation: Links::Operations::Create.new)
      @operation = operation
    end

    def call(params)
      operation.call(url: params[:link][:url]) if params.valid?
      redirect_to routes.root_path
    end
  end
end
