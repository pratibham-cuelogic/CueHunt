# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Technology.destroy_all
QuestionAnswer.destroy_all
Question.destroy_all
Answer.destroy_all

ror_tech = Technology.create(name: "Ruby on Rails", reviewer_name: "Jitendra")
php_tech = Technology.create(name: "PHP", reviewer_name: "Surya")
html_tech = Technology.create(name: "Html", reviewer_name: "Vanshaj")
js_tech = Technology.create(name: "Javascript", reviewer_name: "Pratibha")
dotnet_tech = Technology.create(name: ".Net", reviewer_name: "Naxane")
Role.create(role_type: "admin")
Role.create(role_type: "candidate")

Technology.all.each do |tech|
  case tech.name
    when "Ruby on Rails"
      que = ror_tech.questions.create(title: "If you want to append an item to an array , what will be the standard method?")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "arr << item"), is_correct: true},
              {answer: Answer.create(description: "arr.append(item)") },
              {answer: Answer.create(description: "arr.map(item.close)") },
              {answer: Answer.create(description: "arr.length = arr.length+1 arr[length-1] = item") }
          ]
      )

      que = ror_tech.questions.create(title: "Which of the following is class variable?")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "my_variable")},
              {answer: Answer.create(description: "MY_VARIABLE") },
              {answer: Answer.create(description: "@my_variable") },
              {answer: Answer.create(description: "@@my_variable") , is_correct: true}
          ]
      )

      que = ror_tech.questions.create(title: "If you create PostController, where will Rails look for its template by default?")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "app/views/posts") , is_correct: true},
              {answer: Answer.create(description: "app/views/templates") },
              {answer: Answer.create(description: "app/views") },
              {answer: Answer.create(description: "app/templates/posts")}
          ]
      )

      que = ror_tech.questions.create(title: "Which part of migration runs during rollback")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "self.down")},
              {answer: Answer.create(description: "the entire migration") },
              {answer: Answer.create(description: "self.up") },
              {answer: Answer.create(description: "Nothing") , is_correct: true}
          ]
      )

      que = ror_tech.questions.create(title: "Which command you will run to drop your database")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "database_drop")},
              {answer: Answer.create(description: "rake db:drop") , is_correct: true},
              {answer: Answer.create(description: "rake db:migrate") },
              {answer: Answer.create(description: "rake db:destroy")}
          ]
      )

      que = ror_tech.questions.create(title: "Which of these are standard directories in a rails application")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "Db")},
              {answer: Answer.create(description: "app") },
              {answer: Answer.create(description: "lib") },
              {answer: Answer.create(description: "All") , is_correct: true}
          ]
      )

      que = ror_tech.questions.create(title: "What is the output of the following statement? nil.to_a")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "empty string")},
              {answer: Answer.create(description: "FALSE") },
              {answer: Answer.create(description: "0") },
              {answer: Answer.create(description: "empty array") , is_correct: true}
          ]
      )

      que = ror_tech.questions.create(title: "Which command you run to undo the last migration")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "rake db:rollback STEP = 5") , is_correct: true},
              {answer: Answer.create(description: "rake db:rollback 5") },
              {answer: Answer.create(description: "db:rollback 5") },
              {answer: Answer.create(description: "database_undo STEP = 5")}
          ]
      )

      que = ror_tech.questions.create(title: "Which of these statement will utilize  the gem named 'mygem'")
      que.question_answers.create(
          [
              {answer: Answer.create(description: "instantiate 'mygem'")},
              {answer: Answer.create(description: "import 'mygem'") },
              {answer: Answer.create(description: "utilize 'mygem'") },
              {answer: Answer.create(description: "require 'mygem'") , is_correct: true}
          ]
      )

      que = ror_tech.questions.create(title: "Which of the following will interpolate within a string with the variable named monster")
      que.question_answers.create(
          [
              {answer: Answer.create(description: '"/monster"')},
              {answer: Answer.create(description: '"#{monster}"') , is_correct: true},
              {answer: Answer.create(description: "{monster}") },
              {answer: Answer.create(description: '"{monster}"')}
          ]
      )
    when "PHP"

    when "Html"

    when "Javascript"

    when ".Net"

  end
end