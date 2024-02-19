This ansible play-book is used to set the environment of host that run SAP HANA guest on it.

The host hardware configuration:
CPU: Intel xeon 8276L (448 cores)
Memory: 12 TB

The list of tasks:
1. Huge memory page setting in grubby
2. Huge memory location on every NUMA node
3. Network configuration (1 swtich and 1 bond)
4. Chrony setting
5. NFS server mount
6. Set the tuned profile that is suit for sap_hana_hypervisor
7. Disable ksm and ksmtuned service, modify the kvm and kvm_intel by modprobe
8. Stop libvirtd service and start libvirtd-tcp.socket for migration