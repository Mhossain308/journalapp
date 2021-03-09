JournalEntry.destroy_all
User.destroy_all
Category.destroy_all



mo = User.create(name: "Mohamed", username: "Mhossain", password: "abc123")
chris = User.create(name: "Chris", username: "Chrissenpapi", password: "def123")

cat1 = Category.create(name: "Personal")
cat2 = Category.create(name: "Work")
cat3 = Category.create(name: "Daily Reminders")
cat4 = Category.create(name: "Misc.")
    
je1 = JournalEntry.create(user_id: mo.id, category_id: cat1.id, content: "lorem ipsum")
je2 = JournalEntry.create(user_id: mo.id, category_id: cat1.id, content: "lorem ipsum")
je3 = JournalEntry.create(user_id: mo.id, category_id: cat1.id, content: "lorem ipsum")
je4 = JournalEntry.create(user_id: mo.id, category_id: cat1.id, content: "lorem ipsum")

