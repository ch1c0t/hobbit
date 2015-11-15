Hobby::Verbs.each do |verb|
  class_eval "#{verb.downcase}('/') { '#{verb}' }"
  class_eval "#{verb.downcase}('/route.json') { '#{verb} /route.json' }"
  class_eval "#{verb.downcase}('/route/:id.json') { request.params[:id] }"
  class_eval "#{verb.downcase}('/:name') { request.params[:name] }"
end
