User.create(username: "admin", email: "admin@admin.com", password: "password")

category_array = ["History", "Science", "Math", "Foreign Language", "English", "Music", "Art", "PE/Health"]

category_array.each {|category| Category.create(category: category)}

grade_level_array = ["K-2", "3-5", "6-8", "9-12"]

grade_level_array.each {|level| GradeLevel.create(level: level)}
