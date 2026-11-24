variable "tag_members" {
  description = <<EOT
Map of tag_members, attributes below
Required:
    - tag_id
    - username
Optional:
    - tag_name
    - user_id
EOT

  type = map(object({
    tag_id   = string
    username = string
    tag_name = optional(string)
    user_id  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.tag_members : (
        length(v.tag_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.tag_members : (
        length(v.username) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

