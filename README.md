## Bombardier

- Clone the repo to worker hosts
```
ansible-playbook ansible/clone_repo.yml --limit <ansible-host>
```

- Make scripts executable if necessary
```
chmod +x start_bombardier_container.sh
chmod +x stop_bombardier_container.sh
```

- Start new container

ansible (remote):
```
ansible-playbook ansible/start_bombardiers.yml --limit <ansible-host> --extra-vars "target=http://fsb.ru"
```

manual (local):
```
./start_bombardier_container.sh http://fsb.ru
```

- Stop running container

ansible (remote):
```
ansible-playbook ansible/stop_bombardiers.yml --limit <ansible-host>
```

manual (local):
```
./stop_bombardier_container.sh
```


