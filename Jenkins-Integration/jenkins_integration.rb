require 'jenkins_api_client'

class JenkinsIntegration
  # Connect on the jenkins server
  def connection
    @client = JenkinsApi::Client.new(YAML.load_file(File.expand_path("../config/config.yml", __FILE__)))
    puts @client.job.list_all
  end

end

if __FILE__ == $0
  jenkins = JenkinsIntegration.new
  jenkins.connection
end