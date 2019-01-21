require 'yaml'

class NominalHoursService
  def self.call(yml_file)
    YAML.load_file(yml_file)
  end
end
