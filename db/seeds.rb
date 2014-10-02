User.create(username: "admin", email: "admin@admin.com", password: "password")

category_array = ["History", "Science", "Math", "Foreign Language", "English", "Music", "Art", "PE/Health"]

category_array.each {|category| Category.create(category: category)}

grade_level_array = ["K-2", "3-5", "6-8", "9-12"]

grade_level_array.each {|level| GradeLevel.create(level: level)}

User.create(username: "kdmcclin", email: "kdmcclin@gmail.com", password: "thisisnotadrill")

user = User.find_by(username: "kdmcclin")
user.lessons.create(title: "Introduction to Ancient Greece",
objective: "Students will be able to explain Ancient Greece\’s geographic aspects and their implications for setting up a civilization.",
warmup: "Unit diagnostic in green pen",
main: "-Introduce Unit (go through library)<br>-Video Clip 1 (Turn & Talk: What do you notice about Greece? e.g: mountains, ocean/water)<br>-How do you think Greece was similar or different than the other ancient civilizations we have studied? Turn and Talk.<br>-Video Clip 2 (Focus on the following questions on the board as you watch: What more do you notice about Greece\’s geography? How are the Greeks different than other empires? Why was it important for the Greeks to become traders?<br>-Share Out<br>-Worksheet on Ancient Greece\’s geography, together in groups.",
homework: "none")
user.lessons.last.update(category_id: 1)
user.lessons.last.update(grade_level_id: 3)

user.lessons.create(title: "Nat Turner and Life in the South",
objective: "SWBAT evaluate perspectives on a historical figure in order to determine what context shaped those perspectives",
warmup: "Why would we commemorate a historical event or person with a marker, sign, statue, or plaque.",
main: "-Go over warm up.<br>-Read the following description and ask students if they believe the actions or the person should be commemorated: 'A principled, man of faith, organized and led a rebellion against people that supported an activity that was deemed immoral and a crime against God. His leadership skills created a small band of followers that took up arms and defended their beliefs.'<br>-Students will read each source and fill out the Evaluating Historical Opinions Sheet.  Remind students that they are reading to determine the type of person that Nat Turner was described to be by the author.<br>-Come back together as a full class and share the information that was gleaned from each source and from discussion.<br>-Share the background of authors from Resource Sheet 5. How would the background of the authors affect our interpretation of them?",
homework: "Based on what you read for homework and what we did in class, was Nat Turner a hero or a villain? Explain.")
user.lessons.last.update(category_id: 1)
user.lessons.last.update(grade_level_id: 4)
