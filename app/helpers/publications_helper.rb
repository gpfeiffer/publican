module PublicationsHelper
  def link_to_doi(doi)
    link_to doi, "http://dx.doi.org/#{doi}"
  end

  # MR numbers used to have a second ID in parentheses. For the link
  # we only want the numerical ID.
  def link_to_mr(mr)
    link_to "MR #{mr}.",
            "http://www.ams.org/mathscinet-getitem?mr=#{mr.split('(')[0]}"
  end

  def link_to_zbl(zbl)
    link_to "Zbl #{zbl}.",
            "http://www.zentralblatt-math.org/zmath/search/?an=#{zbl}"
  end
end
