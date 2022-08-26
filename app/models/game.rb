    class Game < ActiveRecord::Base  #game class corresponding to the games table in the db and inherits all the orm manipulation methods from the inherited

end


#The database is not tracked with the git version control because it is not good practice plus the database can grow quite fast
#When a migration is run, several things a happen 1.db schema is updated, 2.the schema file is updated