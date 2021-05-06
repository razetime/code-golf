require 'net/http'
require 'json'
source = Net::HTTP.get('api.stackexchange.com', '/posts/82616?site=codegolf')
p source