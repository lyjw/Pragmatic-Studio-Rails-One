# This function was created to minimize example events in spec files.
# It accepts an overrides parameter which, by default, has an empty hash.
# If something gets passed in, merge(overrides) will merge it with the 
# list of attributes below. This makes it easy to override any attribute 
# value, if necessary.

def event_attributes(overrides = {})
  {
    name: "BugSmash",
    location: "Denver",
    price: 10.00,
    description: 'A fun evening of bug smashing!',
    starts_at: 10.days.from_now
  }.merge(overrides)
end