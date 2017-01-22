require 'bundler'
Bundler.require

run Opal::Server.new { |s|
  # the name of the ruby file to load. To use more files they must be required from here (see app)
  s.main = 'application'
  # the directory where the code is (add to opal load path )
  s.append_path 'app'
  # need to set the index explicitly for opal server to pick it up
  s.index_path = 'index.html.erb'
}
