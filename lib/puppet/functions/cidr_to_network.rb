# This is an autogenerated function, ported from the original legacy version.
# It /should work/ as is, but will not have all the benefits of the modern
# function API. You should see the function docs to learn how to add function
# signatures for type safety and to document this function using puppet-strings.
#
# https://puppet.com/docs/puppet/latest/custom_functions_ruby.html
#
# ---- original file header ----

# ---- original file header ----
#
# @summary
#       Converts an CIDR address of the form 192.168.0.1/24 into its network address
#
#
#
Puppet::Functions.create_function(:'cidr_to_network') do
  # @param args
  #   The original array of arguments. Port this to individually managed params
  #   to get the full benefit of the modern function API.
  #
  # @return [Data type]
  #   Describe what the function returns here
  #
  dispatch :default_impl do
    # Call the method named 'default_impl' when this is matched
    # Port this to match individual params for better type safety
    repeated_param 'Any', :args
  end


  def default_impl(*args)
    

    unless args.length == 1 then
      raise Puppet::ParseError, ("cidr_to_network(): wrong number of arguments (#{args.length}; must be 1)")
    end
    arg = args[0]
    unless arg.respond_to?('to_s') then
        raise Puppet::ParseError, ("#{arg.inspect} is not a string. It looks to be a #{arg.class}")
    end
    arg = arg.to_s
    begin
      IPAddr.new(arg).to_range.first
    rescue ArgumentError => e
      raise Puppet::ParseError, (e)
    end
  
  end
end