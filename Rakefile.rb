require "rake"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileLies['test/**/*_test.rb']
end
task default: :test
