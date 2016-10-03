require 'rails/generators'

namespace :scaffold do
  desc "import publications from pubs.json"
  task publications: :environment do

    # the publication model
    model = {
      name: "publication",
      parts: {
        author: "string",
        title: "string",
        data: "text",
        isbn: "string",
        url: "string",
        page_one_url: "string",
        doi: "string",
        mr: "string",
        zbl: "string",
        owp: "string",
        arxiv: "string"
      }
    }
    #parts = model[:parts].map { |k,v| "#{k}:#{v}"}
    #Rails::Generators.invoke "rails:scaffold", [model[:name]] + parts
    parts = model[:parts].map { |k,v| "#{k}:#{v}"}.join(" ")
    command = "rails generate scaffold #{model[:name]} #{parts}"
    puts command
    system command
  end
end
