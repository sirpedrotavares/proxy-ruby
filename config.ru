load 'lib.rb'

class AppProxy < Rack::Proxy

  def rewrite_env(env)
    request = Rack::Request.new(env)
    @doc = Nokogiri::XML(request.body.read)
    @doc.remove_namespaces!
    puts @doc

    #Do Something ...

    if request.path=='/path1'
      env["HTTP_HOST"] = IP_PORT_DESTINATION_1
    else
      env["HTTP_HOST"] = IP_PORT_DESTINATION_2
    end

    env['rack.input'].rewind
    env
  end

end

post '/*' do
  AppProxy.new.call(request.env)
end

run AppProxy.new