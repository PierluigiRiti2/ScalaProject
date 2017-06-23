require 'minitest/autorun'
require_relative 'jenkins_build'

class TestJenkins < Minitest::Test

  def test_jenkins
    test_jenkins = JenkinsBuild.new
    assert(test_jenkins.sayHello, "Hello")
    test_jenkins = nil
  end

end