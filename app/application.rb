class Application

  def call(env)
    resp = Rack::Response.new




    now = Time.now
    if (0..12).cover? now.hour
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end
