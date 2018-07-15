Hanami::Model.migration do
  change do
    add_column :links, :click_count, Integer, default: 0
  end
end
