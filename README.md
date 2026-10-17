# system-software

```
cmake -S . -B build
cmake --build build
cmake --install install
cp timewriter.{service,timer} /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now timewriter.timer
systemctl edit timewriter.service
systemd-delta --type=extended
systemctl show --property Environment timewriter.service
```

```
docker build --tag timewriter .
cp timewriter.docker.{service,timer} /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now timewriter.docker.timer
cat /var/log/timewriter/timewriter.log
```