task default: [:test, :execute]

desc "Runs all the tests"
task :test do
  sh "rspec spec/ -fd"
end

desc "Executes the ruby mars-rover program with mars-rover.in as input"
task :execute do
  sh "ruby src/mars-rover.rb mars-rover.in"
end

