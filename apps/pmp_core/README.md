# PmpCore

This is the core application with the default database (postgresql currently) layer. The 
main goals for version v1.0 are:

* [ ] User management
  - [ ] Save a new user
  - [ ] Change a user
  - [ ] Delete a user
* [ ] Key management
  - [ ] Generate new key pair
  - [ ] protect a private key by a password
  - [ ] Delete a key pair
* [ ] Password management
  - [ ] Suggest new password
  - [ ] Save Password
  - [ ] Delete Password
* [ ] Group management
  - [ ] Create Group
  - [ ] Delete Group
  - [ ] Add new members to a group
  - [ ] Remove a member from a group
  - [ ] Merge groups
  - [ ] Define hierarchies of members in groups
  
Later I will refactor this part and seperate the database layer, so it become 
interchangeable - e.g prefered by Riak.
