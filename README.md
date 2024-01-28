## Depends on

* A proxy forwarding on the docker network `backend` to port 8080 of the wordpress container.
* Secrets DB_PASSWORD and DB_ROOT_PASSWORD stored in the .db_password and .db_root_password files. TODO kill the files

## Volumes

* Volumes wordpress and db are internal to this compose file.
* Volumes may be backed up
* Note that the db volume is only usable with the secrets.

## Networks

* `backend` is used to forward traffic to wordpress
* `default` is internal to this compose file and used between wordpress and db
