Painting.delete_all 
User.delete_all
Topic.delete_all

u1 = User.create(username:"bob", password: "yay", tagline: "I am bob")

t1 = Topic.create(topic: "happy")
t2 = Topic.create(topic: "sad")
t3 = Topic.create(topic: "angry")
t4 = Topic.create(topic: "excited")

# p1 = Painting.create( user_id: u1.id, topic_id: t1.id)

