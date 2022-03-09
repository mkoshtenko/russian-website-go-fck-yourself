# Bombardier

Uses [alpine/bombardier](https://hub.docker.com/r/alpine/bombardier) image from Dockerhub

## How to clone
  1. Clone the repo to your workstation
  2. Install ansible
  3. Run the `clone_repo` playbook

The playbook will use all defined hosts. Use `--limit` argument to specify certain host or a group.
```
ansible-playbook ansible/clone_repo.yml --limit <ansible-host>
```
After these steps you'll have this repo cloned/updated on all specified hosts.

## How to start
  - With ansible on all specified hosts:
```
ansible-playbook ansible/start_bombardiers.yml --limit <ansible-host> --extra-vars "target=http://fsb.ru"
```

  - Manually on a local machine or via ssh:
```
./start_bombardier_container.sh http://fsb.ru
```

## How to stop
  - With ansible on all specified hosts:
```
ansible-playbook ansible/stop_bombardiers.yml --limit <ansible-host>
```
  - Manually on a local machine or via ssh:
```
./stop_bombardier_container.sh
```


