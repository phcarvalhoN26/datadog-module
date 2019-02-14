# Datadog Metric by Host Monitor Module
A very simple module to create a Datadog metric monitor by host.

# Input Variables
- `name`: (Required) The name of the monitor
- `message`: (Required) The message for the monitor
- `query`: (Required) The query that needs to be run
- `tags`: (Required) Tags to filter on for the metric query
- `threshold`: (Required) The threshold that will trigger the monitor

# Usage
```hcl
module "nomad_memory" {
  source      = "THE SOURCE GOES HERE"
  name        = "Nomad Memory"
  message     = "Memory is too high"
  query       = "avg(last_5m):max:system.memory.in_use{${var.tags}} by {host} > ${var.threshold}"
  tags        = "role:nomad"
  threshold   = 0.8
}
```

# Outputs
- `id` - the ID of the monitor
