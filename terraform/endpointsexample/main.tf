provider "google" {
    project = var.gcp_project_name
    region = var.gcp_region
    zone = var.gcp_zone
    version = "~> 3.26"
}

# Enable prerequsite APIs
resource "google_project_service" "gcp_services_prerequisites" {
    count   = length(var.gcp_api_list_prereq)
    service = var.gcp_api_list_prereq[count.index]

    disable_dependent_services = false
}

# Enable required APIs
resource "google_project_service" "gcp_services" {
    count   = length(var.gcp_api_list)
    service = var.gcp_api_list[count.index]

    disable_dependent_services = false

    depends_on = [google_project_service.gcp_services_prerequisites]
}