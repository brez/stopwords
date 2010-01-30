require 'rake'
require 'rubygems'
require 'rake/gempackagetask'
require 'spec/rake/spectask'

desc "Run the specs under spec"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts << "-c"
end

spec = Gem::Specification.new do |s|
  s.name = 'stopwords'
  s.version = '0.2'
  s.require_path = 'lib'
  s.description = 'A stopword library'
  s.summary = 'A stopword library'
  s.files = FileList["{bin,docs,lib,test}/**/*"].exclude("rdoc").to_a
  s.author = "ENDAX, LLC"
  s.email = "john@endax.com"
  s.homepage = "http://endax.github.com/"
end

Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end 
