== Change Log

Cucumber and Rspec testing aoround the new user registration feature.

Fixed issue discovered by Exploratory Testing workshop where registering with a new email and an existing userid would cause error: ConstraintException: column username is not unique: INSERT INTO "users" 

Fixed broken link on 'About | Bill Allen'

Enabled case insensitivity on username. Modified existing users table to downcase all existing usernames.
