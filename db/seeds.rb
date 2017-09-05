Project.create(name: "My Project")

characters = Character.create(
  [
    {
      first_name: "Bob",
      last_name: "Hammond",
      hometown: "Las Vegas",
      likes: "pina coladas and getting caught in the rain",
      dislikes: "spiders"
    }
  ]
)

scenes = Scene.create(
  [
    {
      title: "Prologue",
      notes: "My prologue",
      project_id: 1
    },
    {
      title: "Chapter 1",
      notes: "Some words",
      project_id: 1
    },
    {
      title: "Chapter 2",
      notes: "Some other words",
      project_id: 1
    }
  ]
)
