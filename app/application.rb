class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    time2 = time.strftime("%H")
    time2 = time2.to_i

    if time2 <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"

    end

    resp.finish


  end


end
