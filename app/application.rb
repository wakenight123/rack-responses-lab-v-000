class Application
  def call(env)
    resp = Rack::Response.new

    input = Time.now.hour

    if input < 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end
