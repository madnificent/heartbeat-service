# see https://github.com/mu-semtech/mu-ruby-template for more info
get '/' do
  content_type 'application/json'
  status 200
  { data: { attributes: { heartbeat: true } } }.to_json
end
