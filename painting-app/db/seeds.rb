User.delete_all
Topic.delete_al
Painting.delete_all 

u1 = User.create(username:"bob", password: "yay", tagline: "I am bob")
t1 = Topic.create(topic: "happy")
p1 = Painting.create(painting: 00010100100, user_id: 1, topic_id: 1)