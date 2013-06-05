module CachePurgeApi
  def execute_cache_purge(options={})
    call(open_api_path("executeCachePurge"),add_purge_credentials(options))
  end

  def pad_list(options={})
    call(open_api_path("padList"),options)
  end

  def status(options={})
    call(open_api_path("status"),options)
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
