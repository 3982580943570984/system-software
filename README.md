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