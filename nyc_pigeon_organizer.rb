# 
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
# ```
# 
# Iterate over the hash above, collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should look something like the hash below:
# 
# ```ruby
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
require "pry"

def nyc_pigeon_organizer(data)
  output ={}
  data.each do |attribute, att_data|
    att_data.each do |specifics, names|
      names.each do |bird|
        if output.include?(bird) 
          if output[bird].include?(attribute)
            output[bird][attribute] << specifics.to_s
          else
            output[bird][attribute] = [specifics.to_s]
          end
        else
          output[bird] = {}
          output[bird][attribute] = [specifics.to_s]
        end
      end
    end
  end
  output
end

nyc_pigeon_organizer(pigeon_data)

  # write your code here!