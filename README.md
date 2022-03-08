## Bombardier

- Clone the repo to worker hosts
```
ansible-playbook ansible/clone_repo.yml --limit <host>
```

- Make scripts executable if necessary
```
chmod +x start_bombardier_container.sh
chmod +x stop_bombardier_container.sh
```

- Start new container
```
./start_bombardier_container.sh http://fsb.ru
```

- Stop running container
```
./stop_bombardier_container.sh
```


