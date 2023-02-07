require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddie Mercury" => {
      name: "Freddie",
      email: "freddie@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  # your code here!
  contacts.each do |person, contact_details|
    if person == "Freddie Mercury"
      contact_details.each do |attr, data|
        if attr == :favorite_ice_cream_flavors
        data.delete_if {|ice_cream| ice_cream == "strawberry" }
      end
    end
  end
end
end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
