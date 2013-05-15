module ConfigOpenApi

  def list(options={})
    call(config_open_path("list"),options)
  end

  def view(options={})
    call(config_open_path("view"),options)
  end

  def add(options={})
    call(config_open_path("add"),options)
  end

  def edit(options={})
    call(config_open_path("edit"),options)
  end

  def config_open_path(command)
    "/config/rest/pan/site/#{command}"
  end
end
