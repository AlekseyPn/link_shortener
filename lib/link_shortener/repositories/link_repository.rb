class LinkRepository < Hanami::Repository
  def find_by_key(key)
    root.where(key: key).one
  end
end
