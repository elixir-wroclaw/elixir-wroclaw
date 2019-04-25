# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Demo.Repo.insert!(%Demo.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Demo.Repo
alias Demo.Meetups.{City, Meetup, Speaker}


wroclaw =
  %City{
    name: "Wrocław",
    meetups: [
      %Meetup{
        name: "Elixir Wrocław",
        description: "The best Elixir meetup",
        location: "Uniwersytet Wrocławski",
        likes: 9999,
        speakers: [
          %Speaker{
            name: "Bartłomiej Korpus",
            title: "Absinthe - GraphQL demo with Elixir"
          },
          %Speaker{
            name: "Lucjan Suski",
            title: "Profiling Elixir"
          }
        ]
      },
      %Meetup{
        name: "Some Meetup 1",
        description: "Some Meetup 1 description",
        location: "Somewhere",
        likes: 0,
        speakers: [
          %Speaker{
            name: "Random 1",
            title: "Random Title"
          },
          %Speaker{
            name: "Random 2",
            title: "Random Title"
          }
        ]
      },
      %Meetup{
        name: "Some Meetup 2",
        description: "Some Meetup 2 description",
        location: "Somewhere",
        likes: 0,
        speakers: [
          %Speaker{
            name: "Random 1",
            title: "Random Title"
          },
          %Speaker{
            name: "Random 2",
            title: "Random Title"
          }
        ]
      },
    ]
  }
  |> Repo.insert!()



krakow =
    %City{
      name: "Kraków",
      meetups: [
        %Meetup{
          name: "Some Meetup 3",
          description: "Some Meetup 3 description",
          location: "Somewhere",
          likes: 0,
          speakers: [
            %Speaker{
              name: "Random 1",
              title: "Random Title"
            },
            %Speaker{
              name: "Random 2",
              title: "Random Title"
            }
          ]
        },
        %Meetup{
          name: "Some Meetup 4",
          description: "Some Meetup 4 description",
          location: "Somewhere",
          likes: 0,
          speakers: [
            %Speaker{
              name: "Random 1",
              title: "Random Title"
            },
            %Speaker{
              name: "Random 2",
              title: "Random Title"
            }
          ]
        },
      ]
    }
    |> Repo.insert!()
