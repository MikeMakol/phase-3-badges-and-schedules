# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end
badge_maker("Arel")

def batch_badge_creator(names)
    badge_messages = []

    names.each do |name|
        badge_messages << badge_maker(name)
    end
    badge_messages
end
batch_badge_creator(["Arel", "Carol"])

def assign_rooms(speakers)
    rooms = []

    speakers.each_with_index do |speaker, index|
        rooms << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
    end
    rooms
end
assign_rooms(["Arel", "Carol"])

def printer(print)
    badge_messages = batch_badge_creator(print)
    rooms = assign_rooms(print)

    badge_messages.each { |badge| puts badge}
    rooms.each { |room| puts room}
end