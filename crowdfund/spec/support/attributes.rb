def project_attributes(overrides = {}) 
  {
    name: "Fleye - Your Personal Flying Robot",
    category: "Technology",
    description: "Fleye is a whole new kind of drone. Safe, fun and autonomous. Invent the future of flying robots thanks to its open API and SDK.",
    target_pledge_amount: 175000.00,
    pledging_ends_on: 100.days.from_now,
    website: "gofleye.com"
    }.merge(overrides)
end