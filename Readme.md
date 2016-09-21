# Heartbeat service

This service always returns a status 200 when it can be accessed.

## Example
Add the heartbeat-service to your docker-compose.yml.


    heartbeat:
      image: madnificent/heartbeat-service


Add the following to your dispatcher.ex


    match "/heartbeat/*path" do
      Proxy.forward conn, path, "http://heartbeat/"
    end


All calls to `/heartbeat` will now return a status 200.
