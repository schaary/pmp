
alias PmpCore.{Repo, User}

# Users
jacko = %User{firstname: "Michael Joseph", lastname: "Jackson", username: "jacko", email: "jacko@example.com"} |> Repo.insert!
jimi = %User{firstname: "James Marshall", lastname: "Hendrixs", username: "jimi", email: "jimi@example.com"} |> Repo.insert!
elvis = %User{firstname: "Elvis Aaron", lastname: "Presley", username: "elvis", email: "elvis@example.com"} |> Repo.insert!
