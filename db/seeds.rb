User.create(username: "admin", email: "admin@admin.com", password: "password")

category_array = ["History", "Science", "Math", "Foreign Language", "English", "Music", "Art", "PE/Health"]

category_array.each {|category| Category.create(category: category)}

grade_level_array = ["K-2", "3-5", "6-8", "9-12"]

grade_level_array.each {|level| GradeLevel.create(level: level)}

User.create(username: "kdmcclin", email: "kdmcclin@gmail.com", password: "thisisnotadrill")

# user.lessons.create(title: "Introduction to Ancient Greece",
# objective: "Students will be able to explain Ancient Greece’s geographic aspects and their implications for setting up a civilization.",
# warmup: "Unit diagnostic in green pen",
# main: "-Introduce Unit (go through library)<br>-Video Clip 1 (Turn & Talk: What do you notice about Greece? e.g: mountains, ocean/water)<br>-How do you think Greece was similar or different than the other ancient civilizations we have studied? Turn and Talk.<br>-Video Clip 2 (Focus on the following questions on the board as you watch: What more do you notice about Greece’s geography? How are the Greeks different than other empires? Why was it important for the Greeks to become traders?<br>-Share Out<br>-Worksheet on Ancient Greece’s geography, together in groups.",
# homework: "none")
#lesson.update(category_id: 1)
#lesson.update(grade_level_id: 3)
