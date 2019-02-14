resource "datadog_monitor" "metric_monitor" {
  name    = "${var.name}"
  type    = "metric alert"
  message = "${var.message}"
  query   = "${var.query}"

  thresholds {
    critical = "${var.threshold}"
  }

  notify_no_data = false
}
