module CachePurgeApi
  def execute_cache_purge(options={})
  puts "firing"
    call(open_api_path("executeCachePurge"),add_purge_credentials(options))
  end

  def get_cache_domain_list(options={})
    call(open_api_path("getCacheDomainList"),add_purge_credentials(options))
  end

  def open_api_path(command)
    "/OpenAPI/services/CachePurgeAPI/#{command}"
  end

  def add_purge_credentials(options)
    options[:userId] = @user
    options[:password] = @password

    options
  end
end
