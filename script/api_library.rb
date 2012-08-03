require 'rest_client'
require 'crack'

def parse_response(response, format)
  
  parsed_response = nil
  if format == 'json'
    parsed_response = Crack::JSON.parse(response)
  elsif format == 'xml'
    parsed_response = Crack::XML.parse(response)
  end
end
  
def create_list(name, format) 
  path = "localhost:3000/lists/.#{format}"
  RestClient.post(path, :list => {name: name})
end

def resquest_list(list_id, format)
  path = "localhost:3000/lists/#{list_id}/.#{format}"
  parse_response(RestClient.get(path),format)
end

def delete_list(list_id, format)
  path = "localhost:3000/lists/#{list_id}/.#{format}"
  RestClient.delete(path)
end

def create_task(task, list_id, format)
  path = "localhost:3000/tasks/.#{format}"
  RestClient.post(path, :task => {task: task, list_id: list_id})
end

def update_task(task_id, state, format)
  path = "localhost:3000/tasks/#{task_id}/.#{format}"
  RestClient.put(path, :task => {state: state}) 
end
  

 


