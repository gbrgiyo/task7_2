#############
#### GKE ####
#############

variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project name"
}

variable "GOOGLE_REGION" {
  type        = string
  description = "GCP region to use"
}


variable "GKE_NUM_NODES" {
  type        = number
  description = "GKE nodes number"
}

#############
#### TLS ####
#############

variable "algorithm" {
  type        = string
  description = "The cryptograhic algorithm (e.g. RSA)"
}

variable "ecdsa_curve" {
  type        = string
  description = "The elliptic curve (e.g. P256, P384, P521)"
}

###############
### GITHUB ####
###############

variable "github_owner" {
  type        = string
  description = "The GitHub owner"
}

variable "github_token" {
  type        = string
  description = "GitHub personal access token"
}

variable "repository_name" {
  type        = string
  default     = "flux-gitops"
  description = "GitHub repository"
}

variable "repository_visibility" {
  type        = string
  default     = "private"
  description = "The visibility of the GitOps repository"
}

variable "branch" {
  type        = string
  default     = "main"
  description = "GitHub branch"
}

# variable "public_key_openssh" {
#   type        = string
#   description = "OpenSSH public key repository access"
# }

# variable "public_key_openssh_title" {
#   type        = string
#   description = "The title for OpenSSH public key"
# }

##############
#### FLUX ####
##############

variable "github_repository" {
  type        = string
  description = "GitHub repository to store Flux manifests"
}

variable "target_path" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}

# variable "private_key" {
#   type        = string
#   description = "The private key used to authenticate with the Git repository"
# }

variable "config_path" {
  type        = string
  default     = "~/.kube/config"
  description = "The path to the kubeconfig file"
}