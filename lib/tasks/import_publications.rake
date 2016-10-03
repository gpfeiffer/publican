task import_publications: :environment do
  YAML.load(File.read("tmp/pubs.yml")).each do |publication_attrs|
    Publication.create! publication_attrs
  end
end
