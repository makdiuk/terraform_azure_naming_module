#----------------------------------- Global -----------------------------------
variable "solution" {
  description = "Solution name - example: organization_name"
  type        = string
}

variable "function" {
  description = "Function name"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment name -	example:prod/stage/dev/int"
  type        = string
}

variable "location" {
  description = "location - example: eastus"
  type        = string
}

variable "alteration" {
  description = "Example of alteration: you spawn more than one environments in the same environment first alteration of the default deployment/environment = 01 second alteration of the deployment/environment = 02"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `name`, etc."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
}

#----------------------------------- Specified -----------------------------------
# Region list and its assertion
# The short region set according to name conventions.
variable "short_location_names" {
  type = map(any)
  default = {
    "eastus"         = "eus"
    "eastus2"        = "eus2"
    "centralus"      = "clus"
    "northcentralus" = "nclus"
    "southcentralus" = "sclus"
    "westcentralus"  = "wclus"
    "westus"         = "wus"
    "westus2"        = "wus2"
    "westus3"        = "wus3"
  }
}

# Environment names list and its assertion
# The short environment names set according to name conventions.
variable "environment_list" {
  description = "Environment name"
  type        = list(any)
  default     = ["shared", "dev", "int", "devops", "devops-b", "stage", "stage-b", "sandbox", "prod", "prod-b", "ops", "perftest", "cosigner", "global"]
}

variable "short_environment_names" {
  type = map(any)
  default = {
    "prod"   = "p"
    "dev"    = "d"
    "stage"  = "st"
    "shared" = "sh"
    "global" = "gbl"
  }
}
