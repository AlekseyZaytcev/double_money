require 'yaml'

class HoursLoaderService
  def self.call(yml_file)
    YAML.load_file(yml_file)
  end
end
