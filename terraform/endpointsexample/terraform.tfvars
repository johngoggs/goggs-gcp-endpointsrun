gcp_project_name = "gcp_project"
gcp_region = "gcp-region"
gcp_zone = "gcp_zone"
gcp_api_list_prereq = [
    "iam.googleapis.com",                   # IAM (Identitity and Access Management) API
    "cloudapis.googleapis.com",             # Cloud API
    "run.googleapis.com",                   # Cloud Run API
    "endpoints.googleapis.com",             # Cloud Endpoints API
    "storage-api.googleapis.com",           # Cloud Storage JSON API
    "storage-component.googleapis.com",     # Cloud Storage API
    "servicemanagement.googleapis.com",     # Service Management API
    "logging.googleapis.com",               # Stackdrive Logging API
    "cloudbuild.googleapis.com"             # Cloud Build API
]
gcp_api_list = [
    "servicecontrol.googleapis.com",        # Service Control API
    "containerregistry.googleapis.com"      # Container Registry API
]