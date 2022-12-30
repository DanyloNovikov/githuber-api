3.times do |i|
  Project.create(
    project_name: "some project name #{i}",
    owner_username: "some owner name #{i}"
  ) 
end
