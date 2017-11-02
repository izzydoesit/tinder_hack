class EnvConfig
  
  attr_accessor :options

  def self.config_path=(path)
    @@config_path = path
  end

  def initialize

    unless File.exists?(@@config_path)
      raise ConfigurationException, "\n\nMissing environment configuration file\n"
    end

    environment = ENV['env']
    configs = YAML.load_file(@@config_path)
    @options = configs[environment]
  end
end
  
class ConfigurationException < StandardError; end;
  