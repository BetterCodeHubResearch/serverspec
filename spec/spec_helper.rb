require 'serverspec'
require 'pathname'
require 'rspec/mocks/standalone'

set :backend, :exec

PROJECT_ROOT = (Pathname.new(File.dirname(__FILE__)) + '..').expand_path

module Specinfra
  module Backend
    class Exec < Base
      def run_command cmd
        CommandResult.new({
          :stdout      => ::Specinfra.configuration.stdout,
          :stderr      => ::Specinfra.configuration.stderr,
          :exit_status => 0,
          :exit_signal => nil,
        })
      end
    end
    class Cmd < Base
      def run_command cmd
        CommandResult.new({
          :stdout      => ::Specinfra.configuration.stdout,
          :stderr      => ::Specinfra.configuration.stderr,
          :exit_status => 0,
          :exit_signal => nil,
        })
      end
    end
  end
end
