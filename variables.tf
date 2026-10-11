variable "observabilityadmin_centralization_rule_for_organizations" {
  description = <<EOT
Map of observabilityadmin_centralization_rule_for_organizations, attributes below
Required:
    - rule_name
Optional:
    - region
    - tags
    - rule (block):
        - destination (optional, block):
            - account (required)
            - destination_logs_configuration (optional, block):
                - backup_configuration (optional, block):
                    - kms_key_arn (optional)
                    - region (optional)
                - log_group_name_configuration (optional, block):
                    - log_group_name_pattern (required)
                - logs_encryption_configuration (optional, block):
                    - encryption_conflict_resolution_strategy (optional)
                    - encryption_strategy (required)
                    - kms_key_arn (optional)
            - destination_metrics_configuration (optional, block):
                - backup_configuration (optional, block):
                    - region (required)
            - region (required)
        - source (optional, block):
            - regions (required)
            - scope (required)
            - source_logs_configuration (optional, block):
                - data_source_selection_criteria (optional)
                - encrypted_log_group_strategy (required)
                - log_group_selection_criteria (optional)
            - source_metrics_configuration (optional, block):
                - metrics_selection_criteria (required)
EOT

  type = map(object({
    rule_name = string
    region    = optional(string)
    tags      = optional(map(string))
    rule = optional(list(object({
      destination = optional(list(object({
        account = string
        destination_logs_configuration = optional(list(object({
          backup_configuration = optional(list(object({
            kms_key_arn = optional(string)
            region      = optional(string)
          })))
          log_group_name_configuration = optional(list(object({
            log_group_name_pattern = string
          })))
          logs_encryption_configuration = optional(list(object({
            encryption_conflict_resolution_strategy = optional(string)
            encryption_strategy                     = string
            kms_key_arn                             = optional(string)
          })))
        })))
        destination_metrics_configuration = optional(list(object({
          backup_configuration = optional(list(object({
            region = string
          })))
        })))
        region = string
      })))
      source = optional(list(object({
        regions = set(string)
        scope   = string
        source_logs_configuration = optional(list(object({
          data_source_selection_criteria = optional(string)
          encrypted_log_group_strategy   = string
          log_group_selection_criteria   = optional(string)
        })))
        source_metrics_configuration = optional(list(object({
          metrics_selection_criteria = string
        })))
      })))
    })))
  }))
}

