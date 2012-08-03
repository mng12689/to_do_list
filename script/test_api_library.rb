require_relative 'api_library'

format = 'json'

puts 'Starting test....'

created_list = create_list('list: test api library', format)
create_task('task: test api library', format)
puts 'Created list and task hash: ' + request_list(1, format)

update_task(1,true,'json')
puts 'Updated task in list: ' + request_list(1, format)

delete_list(1, format)
puts 'Deleted list: ' + request_list(1,format)

puts 'Test finished....'
