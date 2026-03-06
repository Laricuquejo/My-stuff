The Components
Node Exporter — A lightweight agent installed on servers you want to monitor. It collects system metrics (CPU, memory, disk, network) and exposes them via an HTTP endpoint.

Prometheus — The core monitoring server. It:

Periodically scrapes (pulls) metrics from Node Exporters and other targets
Stores the time-series data in its database
Provides a query language (PromQL) to analyze the data
Can trigger alerts based on rules
Grafana — The visualization layer. It:

Connects to Prometheus as a data source
Lets you build dashboards with graphs, gauges, and tables
Makes the metrics human-readable and shareable
Ansible — The automation tool. It:

Installs and configures all the above components across multiple servers
Ensures consistent setup (e.g., deploying Node Exporter to 50 machines)
Manages configuration files and updates

Flow: Ansible deploys Node Exporters → Prometheus scrapes them → Grafana displays the data.