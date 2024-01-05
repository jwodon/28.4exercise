Part 1:

Table Doctors {
  id integer [primary key]
  name text
}

Table Patients {
  id integer [primary key]
  name text
}

Table Visits {
  id integer [primary key]
  doctor_id integer [ref: > Doctors.id]
  patient_id integer [ref: > Patients.id]
  date text
}

Table Diseases {
  id integer [primary key]
}

Table Diagnoses {
  visit_id integer [ref: > Visits.id]
  disease_id integer [ref: > Diseases.id]
}

Part 2:

Table Reigon {
  id integer [primary key]
  name text
}

Table Users {
  id integer [primary key]
  pref_region_id integer [ref: > Reigon.id]
}

Table Posts {
  id integer [primary key]
  title text
  text text
  user_id integer [ref: > Users.id]
  reigon_id integer [ref: > Reigon.id]
  category_id integer [ref: > Categories.id]
}

Table Categories {
  id integer [primary key]
}

Part 3:

Table Team {
  id integer [primary key]
  name text
  city text
}

Table Player {
  id integer [primary key]
  name text
  team_id integer [ref: > Team.id]
}

Table Referee {
  id integer [primary key]
  name text
}

Table Match {
  id integer [primary key]
  team1_id integer [ref: > Team.id]
  team2_id integer [ref: > Team.id]
  date datetime
  start_time datetime
  referee_id integer [ref: > Referee.id]
  season_id integer [ref: > Season.id]
}

Table Goal {
  id integer [primary key]
  match_id integer [ref: > Match.id]
  player_id integer [ref: > Player.id]
}

Table Season {
  id integer [primary key]
  start_date datetime
  end_date datetime
}

Table Lineups {
  id integer [primary key]
  player_id integer [ref: > Player.id]
  match_id integer [ref: > Match.id]
  team_id integer [ref: > Team.id]
}

Table Results {
  id integer [primary key]
  team_id integer [ref: > Team.id]
  match_id integer [ref: > Match.id]
  result text
}
