# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p1 = Post.create([{username: 'bob', content: "bob's first post: hello world!"}])
p2 = Post.create([{username: 'susan', content: "susan is in the house"}])



c1 = Comment.create([{post_id: 1, username: 'frank', content: 'welcome bobby!'}])
c2 = Comment.create([{post_id: 1, username: 'steve', content: 'hello world, indeed'}])

c3 = Comment.create([{post_id: 2, username: 'bob', content: 'hi susan! welcome to this zany app'}])
