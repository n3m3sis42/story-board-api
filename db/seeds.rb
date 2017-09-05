Project.create(name: "My Project")

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
