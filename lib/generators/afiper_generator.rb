require 'rails/generators/base'

class AfiperGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)

  def copy_initializer_file
    file_name = "create_afiper_models.rb"
    now = DateTime.current.strftime("%Y%m%d%H%M%S")
    copy_file file_name, "db/migrate/#{now}_#{file_name}"
  end
end
