module CacheFlushOpenApi

  def do_purge(options={})
    call(cache_flush_path("doPurge"),add_flush_credentials(options))
  end

  def cache_flush_path(command)
    "/purge/rest/#{command}"
  end

  def add_flush_credentials(options)
    options[:user]     = @user
    options[:pass]     = @password

    options
  end
end
