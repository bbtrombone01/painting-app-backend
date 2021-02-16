Painting.delete_all 
User.delete_all
Topic.delete_all


u1 = User.create(username:"bob", password: "yay", tagline: "I am bob")
t1 = Topic.create(topic: "happy")
p1 = Painting.create( user_id: 1, topic_id: 1)