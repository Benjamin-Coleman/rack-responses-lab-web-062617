class Application

	def call(env)
		resp = Rack::Response.new

		time = Time.now
		if time.hour >= 12 
			resp.write "Good Afternoon!"
		else
			resp.write "Good Morning!"
		end
		resp.write "It is #{time}"


		resp.finish
	end


end