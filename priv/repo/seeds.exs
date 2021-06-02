alias Events.Guests.Guest
alias Events.Activities.Activity

# ACTIVITY
activity_params = %{activity_date: "13/05/2021", name: "Next Level Week"}

new_activity = Activity.changeset(%Activity{}, activity_params)

Events.Repo.insert!(new_activity)

# GUEST1
guest_params = %{name: "Maiqui Tomé", email: "maiquitome@gmail.com"}

new_guest = Guest.changeset(%Guest{}, guest_params)

Events.Repo.insert!(new_guest)

# GUEST2
guest_params = %{name: "Mike Shinoda", email: "mikeshinoda@teste.com"}

new_guest = Guest.changeset(%Guest{}, guest_params)

Events.Repo.insert!(new_guest)

# GUEST3
guest_params = %{name: "Mayk Brito", email: "maykbrito@teste.com"}

new_guest = Guest.changeset(%Guest{}, guest_params)

Events.Repo.insert!(new_guest)
