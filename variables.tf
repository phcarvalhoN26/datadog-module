variable "name" {
  description = "The name of the monitor"
}

variable "message" {
  description = "The message for the monitor"
}

variable "query" {
  description = "The query that needs to be run"
}

variable "tags" {
  description = "The tags to narrow the query"
}

variable "threshold" {
  description = "The threshold to trip the monitor into alert status"
}
