# frozen_string_literal: true

Rails.application.config.generators do |gen|
  gen.template_engine = :slim
  gen.jbuilder false
  gen.assets false
  gen.helper false

  # Don't generate system test files.
  gen.system_tests = nil
  gen.test_framework :test_unit,
                     spec:          true,
                     javascripts:   false,
                     stylesheets:   false,
                     helper:        false,
                     fixtures:      true,
                     view_specs:    false,
                     helper_specs:  true,
                     routing_specs: false
  gen.factory_bot dir: 'spec/factories'
end
