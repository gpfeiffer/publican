desc "import publications from db/seeds/publications.yml"
task import_publications: :environment do
  YAML.load(File.read("db/seeds/publications.yml")).each do |publication_attrs|
    Publication.create! publication_attrs
  end
end
