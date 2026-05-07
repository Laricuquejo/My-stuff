# What is Prometheus?

Prometheus is an open-source tool used for event monitoring and alerting. It records real-time metrics in a time-series database built using an HTTP pull model, with flexible queries and real-time alerting.

# Example of configuration sections:
global: 
	scrape_interval: 5s

scrape_configs:
	job_name: "prometheus"
	static configs:
		targets:
			localhost:9090
	job_name: "demo"
	static_configs:
		targets:
			demo.promlabs.com:10000
			demo.promlabs.com:10001
			demo.promlabs.com:10002

## Configuration Summary (lines 6-20):

**`global:`** - Global settings block. `scrape_interval: 5s` means Prometheus will scrape (ir buscar/fetch) metrics from all targets every 5 seconds.

**`scrape_configs:`** - Lists the targets Prometheus should monitor.

**First job (`prometheus`):**
- `job_name: "prometheus"` - Name for this group of targets
- `targets: localhost:9090` - Prometheus monitoring itself on port 9090

**Second job (`demo`):**
- `job_name: "demo"` - Another group of targets
- Three targets: `demo.promlabs.com:10000`, `:10001`, `:10002` - Three different demo services on different ports
- Prometheus will scrape metrics from all three at the defined interval

**Config file **
- prometheus.yml

**Where it will store the collected metrics? **
- data/

**In which port it will listen? **
- By default, Prometheus listens on port 9090

## Side Questions
What is an HTTP request?
An HTTP request is a message that one computer sends to another over the web to ask for something.
HTTP --> HyperText Transfer Protocol 

What is flexible queries?
Flexible queries means you can ask many different kinds of questions about your data, not just simple ones.
queries = questions

pull model ≈ “modelo de busca / Prometheus vai lá e busca os dados”.
push model ≈ "the services would send (push) the metrics to Prometheus by themselves"

A time-series database is a database designed to store values that change over time, together with their timestamps. 

Como esse trio trabalha junto na prática:
	1	O Node Exporter sente os sinais vitais do computador.
	2	O Prometheus anota e guarda todos esses sinais.
	3	O Grafana desenha os gráficos na tela usando as anotações do Prometheus.




