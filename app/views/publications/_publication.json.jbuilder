json.extract! publication, :id, :author, :title, :data, :isbn, :url, :page_one_url, :doi, :mr, :zbl, :owp, :arxiv, :created_at, :updated_at
json.url publication_url(publication, format: :json)