variable "gcp_project_name" {
    description = "GCP Project name."
    type        = string
}

variable "gcp_region" {
    description = "Google Cloud region"
    type        = string
}

variable "gcp_zone" {
    description = "Google Cloud region"
    type        = string
}

variable "gcp_api_list" {
    description = "List of GCP service to enable for a project."
    type        = list
}

variable "gcp_api_list_prereq" {
    description = "List of prerequisite GCP services to enable for a project."
    type        = list
}