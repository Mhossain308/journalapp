JournalEntry.destroy_all
User.destroy_all
Category.destroy_all
# Prompt.destroy_all



mo = User.create(name: "Mohamed", username: "Mhossain", password: "abc123")
chris = User.create(name: "Chris", username: "Chrissenpapi", password: "def123")

cat1 = Category.create(name: "Personal")
cat2 = Category.create(name: "Work")
cat3 = Category.create(name: "Daily Reminders")
cat4 = Category.create(name: "Misc.")



# # prompts.each {|prompt| Prompt.create(prompt)}
# Prompt.create(question: Prompt.all.sample)

# q1 = Prompt.create(question: "Whats one goal you want to achieve ?")
# q2 = Prompt.create(question: "How did your day go ?")

    
je1 = JournalEntry.create(user_id: mo.id, category_id: cat1.id, content: "lorem ipsum")
je2 = JournalEntry.create(user_id: mo.id, category_id: cat2.id, content: "lorem ipsum")
je3 = JournalEntry.create(user_id: mo.id, category_id: cat3.id, content: "lorem ipsum")
je4 = JournalEntry.create(user_id: mo.id, category_id: cat4.id, content: "lorem ipsum")

