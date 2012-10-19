task :default => :rock

desc 'Execute the game, throw rock'
task :rock do
  sh "ruby rockpaperandscissor.rb rock"
end

desc 'Execute the game, throw paper'
task :paper do
  sh "ruby rockpaperandscissor.rb paper"
end

desc 'Execute the game, throw scissor'
task :scissor do
  sh "ruby rockpaperandscissor.rb :scissor"
end

desc 'execute all tests game´s'
task :test do
  sh "ruby tc_class.rb"
end

desc 'Execute one test game´s'
task :t, :n do |t, n|
  name = n[:n]
  sh "ruby -w tc_class.rb --name #{name}"
end



