require 'httparty'
require 'pp'

class Passdock
  include HTTParty
  base_uri 'http://api.passdock.com/api/v1/'
  @token = ""
  
  def initialize(key)
    @token = key
    self.class.default_params :api_token => key
  end
  
  def get_pass(pass_id, family_id)
    self.class.get("/templates/#{family_id}/passes/#{pass_id}")
  end
  
  def download_pass(pass_id, family_id)
    self.class.get("/templates/#{family_id}/passes/#{pass_id}&show=true")
  end
  
  def create_pass(pass, family_id, debug, errors)
    _debug = debug ? "true" : "false"
    _errors = errors ? "true" : "false"
    options = {
      :body => {
        :debug => _debug,
        :errors => _errors,
        :api_token => @token,
        :pass => pass
      }
    }  
    self.class.post("/templates/#{family_id}/passes", options)      
  end  
  
  def update_pass(pass, pass_id, family_id, debug, errors)
    _debug = debug ? "true" : "false"
    _errors = errors ? "true" : "false"    
    options = {
      :body => {
        :debug => _debug,
        :errors => _errors,
        :api_token => @token,
        :pass => pass
      }
    }  
    self.class.put("/templates/#{family_id}/passes/#{pass_id}", options)      
  end  
  
  def destroy_pass(pass_id, family_id, errors)
    _errors = errors ? "true" : "false"
    options = {
      :body => {
        :errors => _errors,
        :api_token => @token
      }
    }  
    self.class.delete("/templates/#{family_id}/passes/#{pass_id}", options)      
  end    
end

# passdock = Passdock.new("YOUR_TOKEN")
# pp passdock.templates
# pp passdock.template(82)
# pp passdock.destroy_template(82, true)
# pp passdock.pass(132, 82)
# pp passdock.create_pass('{"serial_number":"1234", "gate":"12"}', 82, true, false)
# pp passdock.update_pass('{"serial_number":"5678", "gate":"15"}', 94, 82, true, false)
# pp passdock.download_pass(82, 82)
# pp passdock.destroy_pass(94, 82, true)