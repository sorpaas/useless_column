require 'useless_column/runtime'
require 'rails/commands/commands_tasks'

module UselessColumn
  def self.runtime
    if not @@runtime
      @@runtime = UselessColumn::Runtime.new
    end
    @@runtime
  end

  def self.start!(path, models)
    Rails::CommandsTasks.new([]).run_command!('server')
    models.each do |m|
      UselessColumn.runtime.decorate(m.constantize)
    end
  end

  def self.results
    UselessColumn.results
  end
end
