module UselessColumn
  class Runtime
    def initialize
      @records = Hash.new do |hash, key|
        Hash.new
      end
    end

    def record_access(model, method_name)
      @records[model][model_name] = true
    end

    def results
      @record
    end

    def decorate(model)
      method_names = model.column_names

      method_names.each do |method_name|
        model.class_eval do
          define_method method_name do
            record_access(model, method_name)
            super
          end
        end
      end

    end
  end
end
