#!!/usr/bin/env rvm 2.5.5

require 'rake/clean'

SWAP_FILES = FileList.new('**/.*.swp').compact
STYLESHEETS_DIR = File.join("_sass")

CLEAN.include("build",".sass-cache")
CLOBBER.include(".bundle","vendor","Gemfile.lock")

desc "Setup modularscale"
task :ms do
  # ModularScale
  begin
    rm_rf(File.join(STYLESHEETS_DIR,"modularscale"))
    rm_rf(File.join(STYLESHEETS_DIR,"_modularscale.scss"))
    ms = File.join(STYLESHEETS_DIR,"modularscale-sass")
    git = "https://github.com/modularscale/modularscale-sass.git"
    sh "git clone #{git} #{ms}"
    mv File.join(ms,"stylesheets","modularscale"), STYLESHEETS_DIR
    mv File.join(ms,"stylesheets","_modularscale.scss"), STYLESHEETS_DIR
  ensure
    rm_rf(ms)
  end
  # MathSass
  begin
    rm_rf(File.join(STYLESHEETS_DIR,"dist"))
    ms = File.join(STYLESHEETS_DIR,"mathsass")
    git = "https://github.com/terkel/mathsass.git"
    sh "git clone #{git} #{ms}"
    Dir.chdir(ms) do
      sh "git checkout 3bf12b28cd9f"
    end
    mv File.join(ms,"dist"), STYLESHEETS_DIR
  ensure
    rm_rf(ms)
  end
end

desc "Setup website"
task :setup do
  Rake::Cleaner.cleanup_files(CLOBBER)
  sh "bundle install --path vendor/bundle"
end

desc "Instantiate server"
task :server, [:env] do |t,args|
  args.with_defaults(:env => "development")
  puts "Args used: #{args}"
  Rake::Cleaner.cleanup_files(CLEAN)
  sh "JEKYLL_ENV=#{args[:env]} bundle exec jekyll server -w"
end

desc "Instantiate build"
task :build, [:env] do |t,args|
  args.with_defaults(:env => "development")
  puts "Args used: #{args}"
  Rake::Cleaner.cleanup_files(CLEAN)
  sh "JEKYLL_ENV=#{args[:env]} bundle exec jekyll build"
end

desc "Identify swap files"
task :swp do
  SWAP_FILES.each{|f| p f }
end

desc "Remove swap files"
task :rm_swp do
  Rake::Cleaner.cleanup_files(SWAP_FILES)
end

desc "Git HEAD tarball"
task :tar do
  dirname = Dir.getwd
  dirbasename = File.basename(dirname)
  sh "git archive --format=tar.gz -o #{dirbasename}.tar.gz HEAD"
end
