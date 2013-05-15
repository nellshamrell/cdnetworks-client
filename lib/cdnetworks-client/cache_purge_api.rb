module CachePurgeApi
  def do_purge(options={})
    call(open_api_path("doPurge"),options)
  end

  def pad_list(options={})
    call(open_api_path("padList"),options)
  end

  def status(options={})
    call(open_api_path("status"),options)
  end

  def open_api_path(command)
    "/purge/rest/#{command}"
  end
end
