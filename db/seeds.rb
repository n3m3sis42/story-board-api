Project.create(name: "My Project")

users = User.create(
  [
    {
      email: "sarah@gmail.com",
      password: "blah"
    },
    {
      email: "max@gmail.com",
      password: "whatever"
    }
  ]
)

characters = Character.create(
  [
    {
      first_name: "Bob",
      last_name: "Hammond",
      hometown: "Las Vegas",
      likes: "pina coladas and getting caught in the rain",
      dislikes: "spiders",
      user_id: 1
    }
  ]
)

projects = Project.create(
  [
    {
      name: "My Project",
      description: "The next great novel, obvs",
      user_id: 1
    },
    {
      name: "Max's Project",
      description: "It's really just here so I can make sure I don't see scenes that aren't mine",
      user_id: 2
    }
  ]
)

scenes = Scene.create(
  # NOTE status values: To Do, First Draft, Intermedidate Draft, Final Draft, Idea
  # New scenes will start out with "Idea" status
  [
    {
      title: "Prologue",
      notes: "My prologue",
      status: "First Draft",
      project_id: 1
    },
    {
      title: "Chapter 1",
      notes: "Some words",
      status: "First Draft",
      project_id: 1
    },
    {
      title: "Chapter 2",
      notes: "Some other words",
      status: "First Draft",
      project_id: 1
    },
    {
      title: "Chapter 3",
      notes: "Some other additional words",
      status: "First Draft",
      project_id: 1
    },
    {
      title: "Chapter 4",
      notes: "And still more words",
      status: "First Draft",
      project_id: 1
    },
    {
      title: "Not my scene",
      notes: "This scene belongs to Max, not me",
      status: "To Do",
      project_id: 2
    }
  ]
)
