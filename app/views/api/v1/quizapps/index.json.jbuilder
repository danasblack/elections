json.array! @issues.each do |issue|
  json.id issue.id
  json.question issue.question
end 

